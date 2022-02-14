Description: Api


Scenario: Log in 
Given I am on a page with the URL 'https://trello.com/home'
When I click on a link with the text 'Log in' and URL 'https://trello.com/login'
When I enter `reddish.fox.9@gmail.com` in field located `By.xpath(.//input[@id="user"])`
When I click on element located `By.xpath(.//input[@id="login"]):all`
When I wait until element located `By.xpath(.//input[@id="password"]):all` appears
When I enter `Reddish.9` in field located `By.xpath(.//input[@id="password"]):all`
When I click on element located `By.xpath(.//button[@id="login-submit"]):all`

Scenario: Log in verification
When I wait until an element with the text 'YOUR WORKSPACES' appears
Then the text 'YOUR WORKSPACES' exists 

Scenario: Verify api
Given request body: {
name: "Sport"
  }
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards'











