describe "NgRailsCsrf", () ->

        myHttp = {}
        myHttp.defaults = {}
        myHttp.defaults.headers = {}
        myHttp.defaults.headers.common = {}
        
        beforeEach ->
                jQuery('head').append( $("<meta name='csrf-token' value='abc'>") );

        beforeEach ->
                angular.mock.module ($provide) ->
                        $provide.value '$http', myHttp
                        null
        beforeEach ->
                module( 'ng-rails-csrf' )

        describe "#rails3", () ->
                it "should have proper auth token in the headers", () ->
                        expect( myHttp.defaults.headers.common['X-CSRF-TOKEN'] ).toEqual( "abc" )

