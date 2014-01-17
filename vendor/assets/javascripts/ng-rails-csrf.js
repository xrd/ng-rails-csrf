angular.module('ng-rails-csrf', [] ).config(['$httpProvider', function($httpProvider) {    
    var getToken = function() { 
        // Rails 3+
        var el = document.querySelector('meta[name="csrf-token"]');
        if (el) {
            el = el.getAttribute('content');
        } else {
            // Rails 2
            el = document.querySelector('input[name="authenticity_token"]');
            if (el) {
                el = el.value;
            }
        }
        return el;
    };
    var updateToken = function() {
        var headers = $httpProvider.defaults.headers.common, token = getToken();
        if (token) {
            headers['X-CSRF-TOKEN'] = getToken;
            headers['X-Requested-With'] = 'XMLHttpRequest';            
        } 
    };    
    updateToken();    
    if (window['Turbolinks']) {
      $(document).bind('page:change', updateToken); 
    }
}]);
