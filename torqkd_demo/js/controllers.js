'use strict';

/* Controllers */

var homeControllers1 = angular.module('homeControllers', ['angularValidator','ngDialog','ngCookies','ngFileUpload','ngAnimate', 'ngTouch','uiGmapgoogle-maps','ngSanitize','com.2fdevs.videogular']);
//var homeControllers1 = angular.module('homeControllers', ['ngCookies']);

homeControllers1.config(['uiGmapGoogleMapApiProvider', function (GoogleMapApi) {
  GoogleMapApi.configure({
//    key: 'your api key',
    v: '3.17',
    libraries: 'weather,geometry,visualization'
  });
}])

homeControllers1.run(['$rootScope', '$window',  
  function($rootScope, $window) {

  $rootScope.user = {};

  $window.fbAsyncInit = function() {

	FB.init({ 

		appId: '434078603403320', 
		status: true, 
		cookie: true, 
		xfbml: true 
    });

    

  };
  (function(d){
    var js, 
    id = 'facebook-jssdk', 
    ref = d.getElementsByTagName('script')[0];

    if (d.getElementById(id)) {
      return;
    }

    js = d.createElement('script'); 
    js.id = id; 
    js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";

    ref.parentNode.insertBefore(js, ref);

  }(document));
}]);

homeControllers1.controller('indexCtrl', function($scope, $rootScope, ngDialog, $timeout,$location) {
	
	$scope.openDefault = function () {
                ngDialog.open({
                    template: 'firstDialogId',
                });
            };
			
	$scope.openTerms = function () {
                ngDialog.open({
                    template: 'termsDialogId',
                });
            };
	$scope.openPrivacy = function () {
                ngDialog.open({
                    template: 'policyDialogId',
                });
            };
			
	$scope.next_com = function() {
		$location.path('/login')
	};

	
});


homeControllers1.service('loggedInStatus', function () {  var loggedIn = "";
	return {
		getStatus: function () {
			return loggedIn;
		},
		setStatus: function (value) {
			loggedIn = value;
		}
	};
});

homeControllers1.controller('loginCtrl',function($scope,$http,$location,$cookieStore,$cookies,loggedInStatus) {
	
	$scope.msgFlag = false;
	$scope.loggedIn = loggedInStatus.getStatus();
	
	
	if($scope.loggedIn == "true"){
		$location.path('/index');
	}
	
		$scope.email = $cookieStore.get('login_email');
		$scope.password = $cookieStore.get('login_password');
		
	if (typeof ($scope.email) != 'undefined' && typeof ($scope.password) != 'undefined') {	
		$scope.form = {
			email: $scope.email,
			password: $scope.password,
			remember: true
		};
	}
  
	$scope.submitloginForm = function() {
		if (typeof ($scope.form.remember) != 'undefined' && $scope.form.remember == true) {
			$cookieStore.put('login_email',$scope.form.email);
			$cookieStore.put('login_password',$scope.form.password);
		}else{
			$cookieStore.remove('login_email');
			$cookieStore.remove('login_password');
		}
		$http({
           method  : 'POST',
           url     : $scope.baseUrl+'/user/ajs/login',
           data    : $.param($scope.form),  // pass in data as strings
           headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  
       }) .success(function(data) {
               if(data == 1){
				   loggedInStatus.setStatus("true");
				   $location.path('/index');
			   }else{
				   $scope.msgFlag = true;
			   }
	   });
	};
});


homeControllers1.controller('SignUpCtrl', function($scope,$http,$location,$cookieStore,$cookies) {
	
	$scope.submitsignUpForm = function() {
		$cookieStore.put('login_email',$scope.form.email);
		$cookieStore.put('login_password',$scope.form.password);

		$http({
           method  : 'POST',
           url     : $scope.baseUrl+'/user/ajs/signup',
           data    : $.param($scope.form),  // pass in data as strings
           headers : { 'Content-Type': 'application/x-www-form-urlencoded' } 
       }) .success(function(data) {
               //alert(data);
	   });
	

		$location.path('/activities');
	};


	$scope.myCustomValidator = function(text) {
		return true;
	};


	$scope.anotherCustomValidator = function(text) {
		if (text === "rainbow") {
			return true;
		} else return "type in 'rainbow'";
	};


	$scope.passwordValidator = function(password) {

		if (!password) {
			return;
		}
		else if (password.length < 6) {
			return "Password must be at least " + 6 + " characters long";
		}
		else if (!password.match(/[A-Z]/)) {
			return "Password must have at least one capital letter";
		}
		else if (!password.match(/[0-9]/)) {
			return "Password must have at least one number";
		}

		return true;
	};
	
	
	$scope.statelist = [];
	
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/getStateList',
        }).success(function (result) {
        $scope.statelist = result;
    });
	
	
});

homeControllers1.controller('ActivityCtrl', function($scope,$http,$location) {
	$scope.sportsList = [];
	$scope.selSports = [];
	
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/allsports',
        }).success(function (result) {
        $scope.sportsList = result;
    });
	
	$scope.next_a = function() {
		if($scope.selSports.length){
			$http({
			   method  : 'POST',
			   url     : $scope.baseUrl+'/user/ajs/addSport',
			   data    : 'spList='+($scope.selSports),  // pass in data as strings
			   headers : { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' }  // set the headers so angular passing info as form data (not request payload)
		   }) .success(function(data) {
				   //alert(data);
		   });
		}
		$location.path('/connect')
	};
	
	$scope.selectSp = function(id) {
		var idx = $scope.selSports.indexOf(id);
		if (idx === -1) {
			$scope.selSports.push(id);
		}else{
			$scope.selSports.splice(idx,1);
		}
	};
	
	

});

homeControllers1.controller('ConnectCtrl', function($scope,$http,$location) {
	$scope.userList = [];
	$scope.selUsers = [];
	$scope.count = 0;
	
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/userList',
        }).success(function (result) {
        $scope.userList = result;
    });
	
	$scope.selectUser = function(id) {
		var idx = $scope.selUsers.indexOf(id);
		if (idx === -1) {
			$scope.selUsers.push(id);
			$scope.count = $scope.count+1;
		}else{
			$scope.selUsers.splice(idx,1);
			$scope.count = $scope.count-1;
		}
	};

	
	$scope.next_c = function() {
		if($scope.selUsers.length){
			$http({
			   method  : 'POST',
			   url     : $scope.baseUrl+'/user/ajs/addFreind',
			   data    : 'userList='+($scope.selUsers),  // pass in data as strings
			   headers : { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' }  // set the headers so angular passing info as form data (not request payload)
		   }) .success(function(data) {
				   //alert(data);
		   });
		}
		$location.path('/next')
	};
});

homeControllers1.controller('nextCtrl', function($scope, $http,$location,ngDialog) {
	
	$scope.form = {
			mailBody: "Be sure to check out torqkd.com. Torqk'd brings the consciousness of outdoor sports to a new, progressive social media realm. Torqk'd is a collective of runners, jumpers, climbers, riders, hikers, surfers and all who dare to smack the terrain from land, sky, powder and H2O. Now go get it!! Time to connect, track and explore. I use Torqk'd to connect, track and explore my favorite sports."
	};
	
	$scope.sendEmail = function() {
		var dialog1 = ngDialog.open({
                    template: '<div style="text-align:center;">Sending <img src="images/ajax_loading.gif"></div>',
					plain:true,
					showClose:false,
                    closeByDocument: false,
                    closeByEscape: false
        });
			$http({
			   method  : 'POST',
			   url     : $scope.baseUrl+'/user/ajs/sendMail',
			   data    : $.param($scope.form),  // pass in data as strings
			   headers : { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' }  // set the headers so angular passing info as form data (not request payload)
		   }) .success(function(data) {
				   dialog1.close();
				   var dial = ngDialog.open({
						template: '<div style="text-align:center;">Mail sent successfully.</div>',
						plain:true,
						showClose:false,
						closeByDocument: false,
						closeByEscape: false
				});
				setTimeout(function () {
                    dial.close();
                }, 2000);
		   });
	};
	
	$scope.social_share = function() {
		if($scope.social_select == 'fb'){
			FB.getLoginStatus(function(response) {
				if (response.status === 'connected') {
					var uid = response.authResponse.userID;
					var accessToken = response.authResponse.accessToken;
					FB.ui(
						{
							method: 'feed',
							link: 'http://torqkd.com',
							},
						function(response) {
						}
					);
				} else if (response.status === 'not_authorized') {
					FB.logout(function(response) {
						// user is now logged out
					});
					FB.login(function(response) {
						if (response.authResponse) {
							FB.api('/me', function(response) {
								FB.ui(
									{
										method: 'feed',
										link: 'http://torqkd.com',
									},
									function(response) {
									}
								);
							});
						} else {
							alert('User cancelled login or did not fully authorize.');
						}
					});
				} else {
					FB.login(function(response) {
						if (response.authResponse) {
							FB.api('/me', function(response) {
								FB.ui(
									{
										method: 'feed',
										link: 'http://torqkd.com',
									},
									function(response) {
									}
								);
							});
						} else {
							alert('User cancelled login or did not fully authorize.');
						}
					});
				}
			});
			
		}
	};

	$scope.next_n = function() {
		$location.path('/addimg')
	};

});

homeControllers1.controller('addimageCtrl', function($scope, $http, $timeout, $compile, Upload) {
    $scope.usingFlash = FileAPI && FileAPI.upload != null;
	$scope.profileImage = "";
	$scope.profileBackImage = "";

    $scope.$watch('files', function (files) {
        $scope.formUpload = false;
        if (files != null) {
            for (var i = 0; i < files.length; i++) {
                $scope.errorMsg = null;
                (function (file) {
                    upload(file);
                })(files[i]);
            }
        }
    });

    $scope.getReqParams = function () {
        return $scope.generateErrorOnServer ? '?errorCode=' + $scope.serverErrorCode +
        '&errorMessage=' + $scope.serverErrorMsg : '';
    };

    function upload(file) {
        $scope.errorMsg = null;
        uploadUsingUpload(file);
    }

    function uploadUsingUpload(file) {
        file.upload = Upload.upload({
            url: $scope.baseUrl+'/user/ajs/profileImgUp' + $scope.getReqParams(),
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
            },
            fields: {username: $scope.username},
            file: file,
            fileFormDataName: 'Filedata'
        });

        file.upload.then(function (response) {
            file.result = response.data;
			
			var ctime = (new Date).getTime();
			
			$http({
			   method  : 'POST',
			   url     : $scope.baseUrl+'/user/ajs/profileimgresize',
			   data    : $.param({'filename':response.data,'height':156,'width':142,'foldername':'thumb'}),  // pass in data as strings
			   headers : { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' } 
		   }).success(function(data) {
				$('.progress').addClass('ng-hide');
				$scope.profileImage = $scope.baseUrl+'/uploads/user_image/thumb/'+response.data+'?version='+ctime;
		   });
            
        }, function (response) {
            if (response.status > 0)
                $scope.errorMsg = response.status + ': ' + response.data;
        });

        file.upload.progress(function (evt) {
            // Math.min is to fix IE which reports 200% sometimes
            file.progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));
        });

        file.upload.xhr(function (xhr) {
            // xhr.upload.addEventListener('abort', function(){console.log('abort complete')}, false);
        });
    }
	
	
    $scope.$watch('files1', function (files) {
        $scope.formUpload = false;
        if (files != null) {
            for (var i = 0; i < files.length; i++) {
                $scope.errorMsg = null;
                (function (file) {
                    upload1(file);
                })(files[i]);
            }
        }
    });

    function upload1(file) {
        $scope.errorMsg = null;
        uploadUsingUpload1(file);
    }

    function uploadUsingUpload1(file) {
        file.upload = Upload.upload({
            url: $scope.baseUrl+'/user/ajs/profileBackImgUp' + $scope.getReqParams(),
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
            },
            fields: {username: $scope.username},
            file: file,
            fileFormDataName: 'Filedata'
        });

        file.upload.then(function (response) {
            file.result = response.data;
			
			var ctime = (new Date).getTime();
			
			$http({
			   method  : 'POST',
			   url     : $scope.baseUrl+'/user/ajs/profileBackimgresize',
			   data    : $.param({'filename':response.data,'height':536,'width':1175,'foldername':'thumb'}),  // pass in data as strings
			   headers : { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' } 
		   }).success(function(data) {
				$('.progress').addClass('ng-hide');
				$scope.profileBackImage = $scope.baseUrl+'/uploads/user_image/background/thumb/'+response.data+'?version='+ctime;
		   });
            
        }, function (response) {
            if (response.status > 0)
                $scope.errorMsg = response.status + ': ' + response.data;
        });

        file.upload.progress(function (evt) {
            // Math.min is to fix IE which reports 200% sometimes
            file.progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));
        });

        file.upload.xhr(function (xhr) {
            // xhr.upload.addEventListener('abort', function(){console.log('abort complete')}, false);
        });
    }
});

homeControllers1.controller('expCtrl', function($scope, $http,$interval,ngDialog,$sce,VG_VOLUME_KEY,$window,  uiGmapGoogleMapApi ) {
		
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/getCurLocation',
        }).success(function (result) {
	
			$scope.map = {
			  dragZoom: {options: {}},
			  control:{},
			  center: {
				latitude: result.latitude,
				longitude: result.longitude
			  },
			  pan: true,
			  zoom: 9,
			  refresh: false,
			  events: {},
			  bounds: {},
			  markers: result.marker,
		};
		
		

		});
		
	
	
	$scope.autoplay = true;
	$window.localStorage.setItem(VG_VOLUME_KEY, 0);
	
	$scope.openDefault = function () {
                ngDialog.open({
                    template: 'firstDialogId',
                });
            };
			
	$scope.slides = [];
	
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/GetParentSports',
        }).success(function (result) {
        $scope.slides = result;
    });
	
	$scope.mainbanner = 'default.png';
	
	
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/getMainBanner',
        }).success(function (result) {
        $scope.mainbanner = result;
    });
	
	$http({
            method: 'GET',
            url: $scope.baseUrl+'/user/ajs/getMainTv',
        }).success(function (result) {
			$scope.maintv = result;
			$scope.vidsources = [{src: $sce.trustAsResourceUrl($scope.baseUrl+'/uploads/video/converted/'+$scope.maintv.file), type: "video/mp4"}];
			
			
    });
	
	$scope.direction = 'left';
    $scope.currentIndex = 0;

        $scope.setCurrentSlideIndex = function (index) {
            $scope.direction = (index > $scope.currentIndex) ? 'left' : 'right';
            $scope.currentIndex = index;
        };

        $scope.isCurrentSlideIndex = function (index) {
            return $scope.currentIndex === index;
        };

        $scope.prevSlide = function () {
            $scope.direction = 'left';
            $scope.currentIndex = ($scope.currentIndex < $scope.slides.length - 1) ? ++$scope.currentIndex : 0;
        };

        $scope.nextSlide = function () {
            $scope.direction = 'right';
            $scope.currentIndex = ($scope.currentIndex > 0) ? --$scope.currentIndex : $scope.slides.length - 1;
        };
		
		$interval(function(){
            $scope.direction = 'left';
            $scope.currentIndex = ($scope.currentIndex < $scope.slides.length - 1) ? ++$scope.currentIndex : 0;
		}, 2000);
		
    })
    .animation('.slide-animation', function () {
        return {
            beforeAddClass: function (element, className, done) {
                var scope = element.scope();

                if (className == 'ng-hide') {
                    var finishPoint = element.parent().width();
                    if(scope.direction !== 'right') {
                        finishPoint = -finishPoint;
                    }
                    TweenMax.to(element, 1.3, {left: finishPoint, onComplete: done });
                }
                else {
                    done();
                }
            },
            removeClass: function (element, className, done) {
                var scope = element.scope();

                if (className == 'ng-hide') {
                    element.removeClass('ng-hide');

                    var startPoint = element.parent().width();
                    if(scope.direction === 'right') {
                        startPoint = -startPoint;
                    }

                    TweenMax.fromTo(element, 1.3, { left: startPoint }, {left: 0, onComplete: done });
                }
                else {
                    done();
                }
            }
        };

		
});
