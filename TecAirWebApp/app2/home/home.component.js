'use strict'

angular.
    module('home').
    component('home', {
        templateUrl: 'home/home.template.html',
        controller: ['Client',
          function HomeController(Client) {
            this.clients = Client.query();
            // this.orderProp = 'age';
          }
        ]
      });