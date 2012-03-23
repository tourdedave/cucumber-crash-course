Feature: Crash Course Demo

Scenario: Google Search
  Given I am on "http://www.google.com"
  When I search for "Hello World!"
  Then I should see results containing the phrase
