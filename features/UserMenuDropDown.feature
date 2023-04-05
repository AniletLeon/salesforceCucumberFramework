Feature: user menu drop down
Scenario: Select user menu for drop down

Given User is on "LoginPage"
When User enter into Textbox "username" "ani@anstar.com"
Then User enter into Textbox "password" "le0nDhas"
And click on Button "Login"
Given User is on "HomePage"
When click on link "usermenu"

Scenario: Select My Profile option from user menu for username drop down

Given User is on "LoginPage"
When User enter into Textbox "username" "ani@anstar.com"
Then User enter into Textbox "password" "le0nDhas"
And click on Button "Login"
Given User is on "HomePage"
When click on link "usermenu"