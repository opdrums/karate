@apiWeb
Feature: Example of Karate testing delete

  Background:
    * url 'https://jsonplaceholder.typicode.com/'

  @deleteTest
  Scenario: delete user details
    * call read("../post/create.feature@postTest")
    Given path 'posts/' + userIds
    When method delete
    Then status 200