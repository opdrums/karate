@apiWeb
Feature: Example of Karate testing patch

  Background:
    * url 'https://jsonplaceholder.typicode.com/'
    * path 'posts/1'

  @patchTest
  Scenario: patch user details
    Given request {"title": "foo2"}
    When method patch
    Then status 200
    And match response.title == 'foo2'