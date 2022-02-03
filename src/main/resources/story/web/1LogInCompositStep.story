Scenario: Open application under test
Given I am on a page with the URL 'https://www.imdb.com/registration/signin?ref=nv_generic_lgin'

Scenario: Open Log In form
When I click on element located `By.xpath(.//span[contains(text(),'Sign in with IMDb')])`


Scenario: Log in with composite step
When I log in as registered user

Then the page with the URL containing 'https://www.imdb.com/?ref_=login' is loaded
