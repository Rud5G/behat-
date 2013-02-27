Feature: Visitor can see posts in blog
  In order to verify check the posts in blog
  As a visitor
  I want to check blog

  @mink:selenium2
  Scenario Outline: Visitor can see posts in blog
    Given I am on "/blog/"
    Then I should see "<Post>"

    Examples:
      |Post              |     
      |Most Recent Posts |
      |Blogs We Love     |
      |Twitter           |
      |Facebook          |


  @mink:selenium2
  Scenario: Visitor can go back to homepage from  blog
    Given I am on "/blog/"
    And I click on "//*[@id='blog-title']"
    Then I am on "/"