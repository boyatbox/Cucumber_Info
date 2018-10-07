Scenario Outline: Doing some tests
  Given a step
  When I do some <input>
  Then I should get some <output>

@daily
Examples:
  |input     |output    |
  |daily 1   |daily 2 o |

@weekly
Examples:
  |input     |output    |
  |week 1    |week 1 o  |
  |week 2    |week 3 o  |
  

#if we ran providing the tag @Smoke we would only run the Successful login test for the Firefox browser. If instead we ran providing the tag @Regression we would instead run all of the Bad login tests, and the Successful login test over all three browsers. Providing no tag would run all tests, both Smoke and Regression. 
Scenario Outline: Successful login

	Given I want to use the browser [browser]
	When I set the username to testuser1
	And I set the password to testuser1
	When I login to CosmicComix
	Then I am on the launcher page

	@Regression
	Examples:
			|	    browser	 |
			|	    Firefox	 |
			|	    Chrome       |
			|     InternetExplorer   |
	@Smoke
	Examples:
			|	browser		|
			|	Firefox		|