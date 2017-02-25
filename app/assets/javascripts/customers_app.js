// We define out angular module with the same name we
// gave in ng-app in our view. This will be picked up
// since it is in our javascripts assets
var app = angular.module('customers', []);
// Angular uses $http to make AJAX requests
app.controller("CustomerSearchController", [ "$scope", "$http",
  function($scope, $http) {
    var page = 0;
    $scope.customers = [];

    $scope.search = function(searchTerm) {
      // If the user enters less than 3 characters we will not search
      if(searchTerm.length < 3){
        return;
      }
      $http.get("/customers.json", { "params": { "keywords": searchTerm, "page": page } }
      ).then(function(response) { $scope.customers = response.data;},
      function(response) { alert("There was a problem: " + response.status);}
      );
    }

    // Because we used ng-model on our input element, $scope.keywords will always have
    // the value of the keywords in the field
    $scope.previousPage = function() {
      if (page > 0) {
        page = page - 1;
        $scope.search($scope.keywords);
      }
    }

    $scope.nextPage = function() {
      page = page + 1;
      $scope.search($scope.keywords);
    }

  }
]);
