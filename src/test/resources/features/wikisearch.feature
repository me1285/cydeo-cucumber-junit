Feature: Wikipedia search functionality and verifications

  Scenario: Wikipedia Search Functionality Title Verification
  Given User is on Wikipedia home page
  When User types "Bill Gates" in the wiki search box
  And User clicks wiki search button
  Then User sees "Bill Gates" is in the wiki title

    Scenario: Wikipedia Search Functionality Header Verification
      Given User is on Wikipedia home page
      When User types "Steve Jobs" in the wiki search box
      And User clicks wiki search button
      Then User sees "Steve Jobs" is in the main header


@scenarioOutline
  Scenario Outline: Wikipedia Search Functionality Title Verification
    Given User is on Wikipedia home page
    When User types "<searchValue>" in the wiki search box
    And User clicks wiki search button
    Then User sees "<expectedTitle>" is in the wiki title
    Then User sees "<expectedMainHeader>" is in the main header


    Examples: search values we are going to be using in this scenario is as below

      | searchValue | expectedTitle | expectedMainHeader |
      | Elon Musk    | Elon Musk     | Elon Musk      |
      | Bill Gates   | Bill Gates    | Bill Gates     |
      | Cristiano Ronaldo |Cristiano Ronaldo| Cristiano Ronaldo   |
      | Steve Jobs   | Steve Jobs    | Steve Jobs     |