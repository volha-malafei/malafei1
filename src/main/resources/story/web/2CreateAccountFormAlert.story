Description: 1.Create account with already registered user to verify alert message

Scenario: Open application under test
Given I am on a page with the URL 'https://www.imdb.com/registration/signin?ref=nv_generic_lgin'

Scenario: Open Create account form
When I click on element located `By.xpath(.//a[contains(text(),'Create a New Account')])`

Scenario: Enter credentials
When I enter `<name>` in field located `By.xpath(.//input[@id='ap_customer_name'])`
When I enter `<email>` in field located `By.xpath(.//input[@id='ap_email'])`
When I enter `<password>` in field located `By.xpath(.//input[@id='ap_password'])`
When I enter `<password>` in field located `By.xpath(.//input[@id='ap_password_check'])`
When I click on element located `By.xpath(.//input[@id='continue'])`
Then the text 'Important Message!' exists



Examples:
|name   |email                   |password|
|Tester9|angry.grinch.9@gmail.com|Grinch.9|
