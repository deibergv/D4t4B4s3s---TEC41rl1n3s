'use strict';

angular.
module('core.auth').
factory('User',['$http','$q','$state',
function($http,$q,$state){
  
    var _user = {
      isAuthenticated: false
    };
    
    function _checkAuthentication(){
        if(!_user.isAuthenticated){
          $state.go('login');
          console.log('not authenticated, sending to login');
          return;
        }
        return $q.when(_user);
    }

    function _logout(){
        _user.isAuthenticated = false;
        console.log('login out');
        $state.go('login');
        return;
    }
    
    function _login(){
      return $http.get('user.json').then(function(res){
        angular.extend(_user,res.data);
        return _user;
      });
    //    _user.isAuthenticated = true;
    }
    
    return {
      checkAuthentication : _checkAuthentication,
      login: _login,
      logout: _logout
    };
}]);