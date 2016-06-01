Feature: Show All Course Offerings by searching without filling out the form

Scenario: User leaves all search inputs blank
Given I am on the search page
When I leave all input boxes empty and I hit "Search"
Then I should see a list off all the course offerings