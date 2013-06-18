# ng-rails-csrf

Using AngularJS and Rails together? If you are making any HTTP requests then the "ng-rails-csrf" gem can help by automatically adding the CSRF token to HTTP headers. Rails will not accept requests without this token if you are using CSRF protection.

## Installation

Add this line to your application's Gemfile:

    gem 'ng-rails-csrf'

And then execute:

    $ bundle

In your module definition, include the "ng-rails-csrf" module

    var module = angular.module( 'mySpecialModule', [ 'ngResource', 'ng-rails-csrf' ] ).

Then, add the asset to your application.js. The following line should go *before* any module which uses it and *after* angular is included in your asset list. 

    //= require ng-rails-csrf

See the sample project if you need an example: https://github.com/xrd/ng-rails-csrf-sample (application.js: https://raw.github.com/xrd/ng-rails-csrf-sample/master/app/assets/javascripts/application.js)

Now all HTTP requests (both those made with the raw $http object and those created with $resource) will get the CSRF token properly included in the request headers.

## Thanks

* @glebm for adding Turbolinks support. 
* @sectore for fixing an issue with AngularJS v1.1. 
* @johnb-razoo for adding support for Rails2 form helper and spelling errors.
* @alanramsay for fixing dependency on git

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
