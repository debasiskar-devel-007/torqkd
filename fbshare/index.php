<meta property="og:title" content="Workday Sets Price Range for I.P.O." />

<meta property="og:site_name" content="My Favorite News"/>

<meta property="og:image" content="http://torqkd.com/uploads/sports_image/additional/thumb/1396604565.jpg" />
<meta property="og:image" content="http://torqkd.com/uploads/sports_image/additional/thumb/1395741926.jpg" />
<meta property="og:image" content="http://torqkd.com/uploads/sports_image/additional/thumb/1396603056.jpg" />
<link rel="image_src" type="image/jpeg" href="http://www.ieccjapan.com/style/images/11.jpg" /> 
<link rel="image_src" type="image/jpeg" href="http://www.passerinesports.com/img/blog/cricket_team.png" /> 
<link rel="image_src" type="image/jpeg" href="http://upload.wikimedia.org/wikipedia/commons/6/69/Muralitharan_bowling_to_Adam_Gilchrist.jpg" /> 

<meta property="og:description" content="Workday, a provider of cloud-based applications for human resources, said on Monday that it would seek to price its initial public offering at $21 to $24 a share.  At the midpoint of that range, the offering would value the company at $3.6 billion. Like many other technology start-ups, Workday, founded in 2005, will have a dual-class share structure, with each Class B share having 10 votes. Its co-chief executives, David Duffield, the founder of PeopleSoft, and Aneel Bhusri, who was chief strategist at PeopleSoft, will have 67 percent of the voting rights after the I.P.O., according to the prospectus." />

<meta property="fb:app_id" content="1405003926476825" />


<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1405003926476825&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="fb-share-button" data-href="http://torqkd.com/fbshare/" data-layout="button"></div>


<input type="button" value="click" onclick="fb_share()" />

<script>



function fb_share(){
	
	FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {

            // the user is logged in and has authenticated your
            // app, and response.authResponse supplies
            // the user's ID, a valid access token, a signed
            // request, and the time the access token
            // and signed request each expire
            var uid = response.authResponse.userID;
            var accessToken = response.authResponse.accessToken;
            FB.ui(
                {
                   method: 'feed',link: 'http://torqkd.com/fbshare/',
				   image:[
    {url: 'http://en.wikipedia.org/wiki/File:Mount_Rainier_5917s.JPG'},
    {url:'http://en.wikipedia.org/wiki/File:Mount_Rainier_Even_Larger.JPG'}
  ],
                },
                function(response) {
                }
            );
        } else if (response.status === 'not_authorized') {
            // the user is logged in to Facebook,
            // but has not authenticated your app
            //alert('User cancelled login or did not fully authorize.');
			FB.logout(function(response) {
				// user is now logged out
			});

            FB.login(function(response) {
                if (response.authResponse) {
                    FB.api('/me', function(response) {
                        FB.ui(
                            {
                                 method: 'feed',link: 'http://torqkd.com/fbshare/',
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
            // the user isn't logged in to Facebook.
            FB.login(function(response) {
                if (response.authResponse) {
                    FB.api('/me', function(response) {
                        FB.ui(
                            {
                                method: 'feed',link: 'http://torqkd.com/fbshare/',
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

</script>
