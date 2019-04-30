'use strict';

angular.
  module('newFlight').
  component('newFlight', {
    templateUrl: 'new-flight/new-flight.template.html',
    controller: ['$scope','$http','$state', function NewFlightController($scope, $http, $state){
      var _selected;

      $scope.selected = undefined;
      $scope.$state = $state;

      $scope.getLocation = function(val) {

        return $http.get('//maps.googleapis.com/maps/api/geocode/json', {
          params: {
            address: val,
            sensor: false
          }
        }).then(function(response){
          return response.data.results.map(function(item){
            return item.formatted_address;
          });
        });
      };

      $scope.today = function() {
        return new Date();
      };
      $scope.dt1 = new Date();
      $scope.dt2 = new Date();
    
      $scope.clear = function() {
        $scope.dt1 = null;
        $scope.dt2 = null;
      };
    
      $scope.inlineOptions = {
        customClass: getDayClass,
        minDate: new Date(),
        showWeeks: true
      };
    
      $scope.dateOptions = {
        // dateDisabled: disabled,
        formatYear: 'yy',
        maxDate: new Date(2020, 5, 22),
        minDate: new Date(),
        startingDay: 1
      };
    
      $scope.toggleMin = function() {
        $scope.inlineOptions.minDate = $scope.inlineOptions.minDate ? null : new Date();
        $scope.dateOptions.minDate = $scope.inlineOptions.minDate;
      };
    
      $scope.toggleMin();
    
      $scope.open1 = function() {
        $scope.popup1.opened = true;
      };
    
      $scope.open2 = function() {
        $scope.popup2.opened = true;
      };
    
      // $scope.setDate = function(year, month, day) {
      //   $scope.dt = new Date(year, month, day);
      // };
    
      // $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
      // $scope.format = $scope.formats[0];
      // $scope.altInputFormats = ['M!/d!/yyyy'];
    
      $scope.popup1 = {
        opened: false
      };
    
      $scope.popup2 = {
        opened: false
      };
    
      var tomorrow = new Date();
      tomorrow.setDate(tomorrow.getDate() + 1);
      var afterTomorrow = new Date();
      afterTomorrow.setDate(tomorrow.getDate() + 1);

      $scope.events = [
        {
          date: tomorrow,
          status: 'full'
        },
        {
          date: afterTomorrow,
          status: 'partially'
        }
      ];
    
      function getDayClass(data) {
        var date = data.date,
          mode = data.mode;
        if (mode === 'day') {
          var dayToCheck = new Date(date).setHours(0,0,0,0);
    
          for (var i = 0; i < $scope.events.length; i++) {
            var currentDay = new Date($scope.events[i].date).setHours(0,0,0,0);
    
            if (dayToCheck === currentDay) {
              return $scope.events[i].status;
            }
          }
        }
        return '';
      }

      $scope.placement = {
        options: [
          'Boeing 737',
          'Boeing 787',
          'Airbus A330'
        ],
        selected: 'Boeing 737'
      };
  }]
});