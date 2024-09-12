@reg-email
Feature: Registration - Email


  Background:
  Given I open url "http://ask-qa.portnov.com/#/login"
  And I should see page title contains "Assessment Control"
  And I click on element with xpath "//span[contains(text(), 'Register Now')]"
  Then  I type "Test" into element with xpath "//input[@formcontrolname='firstName']"
  Then  I type "Student" into element with xpath "//input[@formcontrolname='lastName']"



  @reg-email1
  Scenario: Email - Allowable characters: Alphanumeric & Special characters

    When I type "sigma80@gazettedorleans.fr" into element with xpath "//input[@formcontrolname='email']"
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
   # Then  element with xpath "ac-registration-confirmation-page" should be disabled
    Then element with xpath "//h4" should have text as "You have been Registered."


  @reg-email2
  Scenario: Email -  Email field required, can’t be empty
    When I type "" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    #Then element with xpath "//mat-error[@role='alert']" should be disabled
    Then element with xpath "//mat-error[@role='alert']" should contain text "This field is required"

  @reg-email3
  Scenario: Email -  Email with Local port with 64 characters on the left of an @
    When I type "sigma80sigma80sigma80sigma80sigma80sigma80sigma80sigma80sigma80s@gazettedorleans.fr" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//h4" should have text as "You have been Registered."


  @reg-email4
  Scenario: Email -  White spaces are not allowed
    When I type " test1_test@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//mat-error[@role='alert']" should contain text "Should be a valid email address"

  @reg-email5
  Scenario: Email -  Max 128 +1 characters
    When I type "80sigmasigma80sigma80sigma80sigma@80sigma80sigma80sigma8gazettedorleansfl.gttttttttttttttttttttttttttttttttttttttttttttttttttttth" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//snack-bar-container[@role='alert']/simple-snack-bar" should contain text "Data too long for column 'email' at row 1 "


  @reg-email6
  Scenario: Email -  Email with domain on the right with 63 characters followed by (.)
    When I type "80sigma@sigma80sigma80sigma80sigma80sigma80sigma80sigma8gazettedorleans.fl" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//h4" should have text as "You have been Registered."


  @reg-email7
  Scenario: Email -  Email with Local port with Max 64+1 character on the left of an @
    When I type "sigma80sigma80sigma80sigma80sigma80sigma80sigma80sigma80sigma80si@gazettedorleans.fr" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//mat-error[@role='alert']" should contain text "Should be a valid email address"


  @reg-email8
  Scenario: Email -  Email with domain on the right with Max 63+ 1 character followed by (.)
    When I type "80sigma@sigma80sigma80sigma80sigma80sigma80sigma80sigma8gazettedorleansl.fl" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//mat-error[@role='alert']" should contain text "Should be a valid email address"

  @reg-email9
  Scenario: Email -  Email with Max 63+ 1 characters in the last part of the domain
    When I type "80sigma@si.gma80sigma80sigma80sigma80sigma80sigma80sigma8gazettedorleansflr" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//mat-error[@role='alert']" should contain text "Should be a valid email address"

  @reg-email10
  Scenario: Email -  Max 128 characters
    When I type "80sigmasigma80sigma80sigma80sigma@80sigma80sigma80sigma8gazettedorleansfl.gttttttttttttttttttttttttttttttttttttttttttttttttttttt" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    Then element with xpath "//h4" should have text as "You have been Registered."

  @reg-email11
  Scenario: Email -  Email with 0 characters (empty) in the last part of the domain
    When I type "sigma80@1" into element with xpath "//input[@formcontrolname='email']"
    And I wait for 1 sec
    When I type "ABC" into element with xpath "//input[@formcontrolname='group']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And  I type "ABC123" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 1 sec
    # Expected result
    Then element with xpath "//mat-error[@role='alert']" should contain text "Should be a valid email address"
     # Actual result
    Then element with xpath "//h4" should have text as "You have been Registered."