Feature: Ger user on regres

Background:
    * url "https://reqres.in"
    * header Accept = "application/json" 
    Scenario: Get a user without background
        Given url "https://reqres.in"+"/api/users/"+"2"
        When method get 
        Then status 200
        And print response
        And print responseStatus
        And print responseTime
        And print responseHeaders
        And print responseCookies

    Scenario: Get a user wit background
        Given path "/api/users/"+"2"
        When method get 
        Then status 200
        And print response

    Scenario: Get a user wit background and param
        Given path "/api/users/"
        And param page = 2
        When method get 
        Then status 200
        And print response

    Scenario: Get a user wit background and assert
        Given path "/api/users/"
        And param page = 2
        When method get 
        Then status 200
        And print response
        And match response.data[0].first_name !=null
        And assert response.data.length == 6
        And match $.data[1].id == 8
        And match $.data[3].last_name == "Fields"