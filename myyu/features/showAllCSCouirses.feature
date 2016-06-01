Scenario: find a course with the title and department
Given I am on course-offering search page
When I fill in "Title" with "Introduction to Computer Science"
And I fill in "Department" with "COM"
And I press "Search"
Then I should see a list of only computer science courses