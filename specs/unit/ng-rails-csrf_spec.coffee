describe "NgRailsCsrf", () ->

        beforeEach( module( 'ng-rails-csrf' ) )
        hp = undefined

        beforeEach inject ( $http ) ->
                hp = $http

        describe "test it", () ->

                beforeEach () ->
                        # Put something in the HTML?
                        console.log "We are here"
                        # for rails 3
                        document.write( "<meta name='csrf-token' value='abc'>" );
                
                it "should have auth tokens in the headers", () ->
                        expect( hp.defaults.headers.common['X-CSRF-TOKEN'] ).toEqual( "abc" )