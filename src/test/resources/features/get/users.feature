@apiWeb
Feature: Example of Karate testing get

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

  @getTest
  Scenario: Get user details
    Given path 'posts/1/comments'
    When method get
    Then status 200
    And match response[1].id == 2
    And match response[0].email == 'Eliseo@gardner.biz'
