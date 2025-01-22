@apiWeb
Feature: Example of Karate testing post

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * path 'posts'
    * request { "title": "#(title)", "body": "#(place)", "userId": "#(user)" }

  @postTest
  Scenario Outline: post user details
    When method post
    Then status 201
    And match response.title == '#(title)'
    And def userIds = $.userId

    Examples:
      | title     | place       | user |
      | "Taco"    | "Mexico"    | 1    |
      | "Pizza"   | "Italy"     | 2    |
      | "Burger"  | "USA"       | 3    |
