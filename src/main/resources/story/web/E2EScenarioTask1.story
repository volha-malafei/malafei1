Description: E2E flow for Task1

Scenario: Open application under test
Given I am on the main application page

Scenario: Open Sign in page 
When I click on a link with the text 'Sign In' and URL 'https://www.imdb.com/registration/signin?ref=nv_generic_lgin'

Scenario: Verification
Then the page with the URL containing 'https://www.imdb.com/registration/signin?ref=nv_generic_lgin' is loaded

Scenario: Open Log In form
When I click on element located `By.xpath(.//span[contains(text(),'Sign in with IMDb')])`

Scenario: Enter credentials
When I enter `<email>` in field located `By.xpath(.//input[@id='ap_email'])`
When I enter `<password>` in field located `By.xpath(.//input[@id='ap_password'])`
When I click on element located `By.xpath(.//input[@type='checkbox'])`
When I click on element located `By.xpath(.//input[@id='signInSubmit'])`
Then the page with the URL containing 'https://www.imdb.com/?ref_=login' is loaded

Examples:
|name   |email                   |password|
|Tester9|angry.grinch.9@gmail.com|Grinch.9|

Scenario: Perform search for movie by search box
When I enter `encanto` in field located `By.xpath(.//input[@id='suggestion-search'])`
When I click on element located `By.xpath(.//button[@id='suggestion-search-button']//*[@id='iconContext-magnify'])`


Scenario: Verify search results
Then the page with the URL containing 'encanto' is loaded

Scenario: Open movie page
When I click on element located `By.xpath(.//a[@href='/title/tt2953050/?ref_=fn_al_tt_1'][text()='Encanto'])`

Scenario: Verify page of searched movie is opened
Then the page with the URL containing 'fn_al_tt_1' is loaded

 
Scenario: Add to Watchlist
When I wait until an element with the text 'Add to Watchlist' appears
When I click on element located `By.xpath(.//DIV[@class='ipc-btn__text'][text()='Add to Watchlist']):all`
Then the text 'In Watchlist' exists
  

Scenario: Watchlist page
When I click on element located `By.xpath(.//body/div[@id='__next']/nav[@id='imdbHeader']/div[2]/div[4]/a[1]/div[1]/span[1])`
Then the page with the URL 'https://www.imdb.com/user/ur149216239/watchlist?ref_=nv_usr_wl_all_0' is loaded
 
Scenario: Sorting on Watchlist
When I click on element located `By.xpath(.//select[@id='lister-sort-by-options'])`
When I select `Alphabetical` in dropdown located `By.xpath(.//select[@id='lister-sort-by-options'])`
Then elements located `By.xpath(.//div[@class="article"]):all` are sorted by text in ASCENDING order

Scenario: Export Watchlist
When I click on a link with the text 'Export this list'

 
Scenario: Clean up the movie from Watchlist
Given I am on a page with the URL 'https://www.imdb.com/user/ur149216239/watchlist?ref_=nv_usr_wl_all_0'
When I click on element located `By.xpath(.//DIV[@tconst="tt2953050"])`


