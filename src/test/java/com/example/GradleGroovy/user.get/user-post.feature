Feature:Post API demo

Background:
    * url "https://reqres.in"
    * header Accept = "application/json"

Scenario: Post demo 1
    Given url "https://reqres.in"+"/api/users/"
    And request {"name":"Jhon","job":"Engineer"}
    When method Post
    Then status 201
    And print response
Scenario: Post demo 2
    Given path "/api/users/"
    And request {"name":"Jhon","job":"Engineer"}
    When method Post
    Then status 201
    And print response

Scenario: Post demo 3
    Given path "/api/users/"
    And request {"name":"Jhon","job":"Engineer"}
    When method Post
    Then status 201
    And print response
    #And match response == {"createdAt" : ""}