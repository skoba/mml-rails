Feature: Care record related about daily intakes.
  In order to record/view personal daily intakes
  As a care provider
  I want to input intakes each time

  Scenario: View index list as table (index)
    Given Daily intake data for person
    When I visit index page
    Then I get a view of intakes list
