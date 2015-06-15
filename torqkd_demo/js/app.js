'use strict';

/* App Module */

var torqdTest = angular.module('torqdTest', [
  'ngRoute',
  'homeControllers'
]);

torqdTest.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/index', {
        templateUrl: 'partials/index.html',
        controller: 'indexCtrl'
      }).
      when('/login', {
        templateUrl: 'partials/login.html',
        controller: 'loginCtrl'
      }).
      when('/signup', {
        templateUrl: 'partials/signup.html',
        controller: 'SignUpCtrl'
      }).
      when('/activities', {
        templateUrl: 'partials/activities.html',
        controller: 'ActivityCtrl'
      }).
      when('/connect', {
        templateUrl: 'partials/connect.html',
        controller: 'ConnectCtrl'
      }).
      when('/next', {
        templateUrl: 'partials/next.html',
        controller: 'nextCtrl'
      }).
      when('/addimg', {
        templateUrl: 'partials/addimage.html',
        controller: 'addimageCtrl'
      }).
      when('/complete', {
        templateUrl: 'partials/completesignup.html',
        controller: 'indexCtrl'
      }).
      when('/experience', {
        templateUrl: 'partials/experience.html',
        controller: 'expCtrl'
      }).
      otherwise({
        redirectTo: '/index'
      });
  }]);
