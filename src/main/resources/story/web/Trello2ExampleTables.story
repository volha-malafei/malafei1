Description: ‘Log in’ scenario using page elements steps and Examples tables

Scenario: Log in with Example tables
Given I am on a page with the URL 'https://trello.com/home'
When I click on a link with the text 'Log in' and URL 'https://trello.com/login'
When I enter `<email>` in field located `By.xpath(.//input[@id="user"])`
When I click on element located `By.xpath(.//input[@id="login"]):all`
When I wait until element located `By.xpath(.//input[@id="password"]):all` appears
When I enter `<password>` in field located `By.xpath(.//input[@id="password"]):all`
When I click on element located `By.xpath(.//button[@id="login-submit"]):all`


Examples:
|email                   |password|
|angry.grinch.9@gmail.com|Grinch.9|
|reddish.fox.9@gmail.com |Reddish.9|

Scenario: Log in verification
When I wait until an element with the text 'YOUR WORKSPACES' appears
Then the text 'YOUR WORKSPACES' exists 


