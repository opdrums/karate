@apiWeb
Feature: Example of Karate testing put

  Background:
    * url 'https://jsonplaceholder.typicode.com/'
    * path 'posts/1'
    * def var = {"title": "foo2", "body": "bar2", "userId": "1"}
    #request {"title": "foo2", "body": "bar2", "userId": "1"}

  @putTest
  Scenario: put user details
    Given request var
    When method put
    Then status 200
    And match response.title == 'foo2'