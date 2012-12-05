
angular.module('ng-rails-csrf').config(['$httpProvider', function($httpProvider) {
    var authToken;
    authToken = $('meta[name="csrf-token"]').attr('content');
    $httpProvider.defaults.headers.common['X-CSRF-TOKEN'] = authToken;
});
