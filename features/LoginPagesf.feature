Feature: 1_LoginTest_TC
Scenario: Navigate to SFDC

Given User is on "LoginPage"
When User enter into Textbox "username" "ani@anstar.com"
Then User clear into Textbox "password"
And click on Button "Login"

Scenario: Login to SFDC

Given User is on "LoginPage"
When User enter into Textbox "username" "ani@anstar.com"
Then User enter into Textbox "password" "le0nDhas"
And click on Button "Login"


Scenario: Test the remember username check box 

Given User is on "LoginPage"
When User enter into Textbox "username" "ani@anstar.com"
Then User enter into Textbox "password" "le0nDhas"
And click on Button "Radio"
And click on Button "Login"

Given User is on "HomePage"
When click on link "usermenu"
And click on link "logout"


Scenario: Test forgot password 

Given User is on "LoginPage"
When click on link "forgotpassword"
Then click on link "forgottextbox"
And click on Button "continue"


Scenario: Test forgot password B


Given User is on "LoginPage"
When User enter into Textbox "username" "123"
Then User enter into Textbox "password" "22131"
And click on Button "Login"
