@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    And element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    And I click on element using JavaScript with xpath "(//input[@name='btnK'])[2]"
    And I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  @predefined2
  Scenario: Predefined steps for Excite Search Engine
    Given I open url "https://www.excite.com/"
    Then I should see page title as "www.excite.com"
    And   I wait for 2 sec
    And element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    And I click on element with xpath "//button[@title='Search the Web!']"
    And a new window should open
    Then I switch to new window
    And I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then  element with xpath "//div[@class='layout__mainline']" should contain text "BDD"


    @predefined3
    Scenario: Predefined steps for DuckDuckGo
      Given  I open url "https://duckduckgo.com/"
      Then I should see page title as "DuckDuckGo — Privacy, simplified."
      And element with xpath "//input[@id='searchbox_input']" should be present
      When I type "Behavior Driven Development" into element with xpath "//input[@id='searchbox_input']"
      And  I click on element with xpath "//button[@type='submit']"
      And I wait for element with xpath "//section[@data-testid='mainline']" to be present
      Then  element with xpath "//section[@data-testid='mainline']" should contain text "BDD"


  @predefined4
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com/en"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    And element with xpath "//input[@type='search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@type='search']"
    And I press Enter key
    And I wait for element with xpath "//div[@class ='web-results content']" to be present
    And I wait for 1 sec
    Then  element with xpath "//div[@class ='web-results content']" should contain text "BDD"



  @predefined5
  Scenario: Predefined steps for OneSearch
    Given I open url "https://www.onesearch.com/"
    Then  I should see page title as "OneSearch"
    And element with xpath "//input[@id='yschsp']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='yschsp']"
    And I click on element with xpath "//div[@class='lens']"
    And  I wait for element with xpath "//*[@id='main']" to be present
    Then  element with xpath "//*[@id='main']" should contain text "BDD"


  @predefined6
  Scenario: Predefined steps for Givewater
    Given I open url "https://www.givewater.com/"
    Then  I should see page title contains "giveWater Search Engine"
    And  element with xpath "//input[@id='site-search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='site-search']"
    And I wait for 2 sec
    Then I switch to new window
    And I click on element with xpath "//button[@class='pum-close popmake-close']"
    #And I wait for the element with xpath "//button[@id='button-addon2']" to be clickable
    And I click on element with xpath "//button[@id='button-addon2']"
    And I wait for element with xpath "//*[@class='layout__mainline']" to be present
    Then  element with xpath "//*[@class='layout__mainline']" should contain text "BDD"
