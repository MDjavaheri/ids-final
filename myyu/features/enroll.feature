Scenario: Lower number of spots left in a course by enrolling
Given I just enrolled in a course with at least two spots left
When I list the offerings again
Then I should see the course listed with one less spot left