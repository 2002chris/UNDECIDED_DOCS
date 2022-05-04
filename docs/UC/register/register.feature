Feature: Register
as a User
I want to be able to register and create an account.

	Background:
		Given following attributes:
		Given user hasn't an account allready
		And user is on register page
    
  Scenario: successfully registered
    When user enters register page
    And enters required register data
    And username is not taken
    And email is not taken
    And repeated password equals to first password entry 
    And clicks on register button
    Then user is registered and created an account
    
  Scenario: username is taken
    When user enters an taken username
    Then user gets a report
    And have to choose another name
    
  Scenario: repeated password does not equals to first password entry
    When user enters password
    And user repeats an unequal password
    Then user gets a report
    And have to check for equal passwords
