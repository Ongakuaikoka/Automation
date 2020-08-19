*** Settings ***
Documentation  Robot Framework for Users

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/testApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute
# robot -d results tests/test.robot

*** Variables ***
${PARTIAL_TYPE}  xpath=//*[contains(@class,'cept-comment-link')]
${PARTIAL_TEXT}  xpath=//*[contains(text(),'VOTES')]
${CERTAIN_COMMENT}  xpath=//article[2]//a[contains(@class,'cept-comment-link')]
#limited number of entries
#Page Should Contain Element  xpath=//*[contains(@class,'cept-comment-link')]  limit=20

${BROWSER}  chrome
${START_URL}  https://rs2253.eu-central-1.dealsix-aws.pepper.com/


*** Test Cases ***
Ensure logged out users can access the users' profile pages through their posted comments
    [Tags]  Other
    testApp.Load The Homepage
    testApp.Go To Thread Comments
    testApp.Go To Profile

Ensure logged in users can access the users' profile pages through their posted comments
    [Tags]  Other
    testApp.Load The Homepage
    testApp.Login
    testApp.Go To Thread Comments
    testApp.Go To Profile

##################################################################################################
Product role has certain tools available in user inspector
    [Tags]  Product
    testApp.Load The Homepage
    testApp.Login As Product
    testApp.Load The Admin Page
    testApp.Inspect A Pepper User
    testApp.Check Available Roles
    Sleep  3s

Product role has certain tools available in admin panel
    [Tags]  Product
    testApp.Load The Homepage
    testApp.Login As Product
    testApp.Load The Admin Page
    testApp.Check Admin Tools
    testApp.Check Custom Banner
    testApp.Check Users
    testApp.Check Infraction Types
    testApp.Check Blacklists
    testApp.Check Referral Parameters
    testApp.Check Events
    testApp.Check Resources
    testApp.Check Static Pages
    testApp.Check Site Messages
    testApp.Check Flamedeer Game
    testApp.Check Auto Scaling
    testApp.Check Moderation Msg
    testApp.Check Widgets
    testApp.Check A/B Testing
    Sleep  3s

Product role has certain tools available in FE admin
    [Tags]  Product
    testApp.Load The Homepage
    testApp.Login As Product
    testApp.Load Listing Page
    testApp.Check For Expire Button
    Sleep  3s

##################################################################################################
Customer Support role has certain tools available in user inspector
    [Tags]  Support
    testApp.Load The Homepage
    testApp.Login As Support
    testApp.Load The Admin Page
    testApp.Inspect Any User
    testApp.Check Support Inspector
    Sleep  3s

Customer Support role has certain tools available in admin panel
    [Tags]  Support
    testApp.Load The Homepage
    testApp.Login As Support
    testApp.Load The Admin Page
    testApp.Check Support Tools
    Sleep  3s

Customer Support role has certain tools available in FE admin
    [Tags]  Support
    testApp.Load The Homepage
    testApp.Login As Support
    testApp.Load Listing Page
    testApp.Check For Expire Button
    Sleep  3s

##################################################################################################
Product can promote other users
    [Tags]  Product

    testApp.Load The Homepage
    testApp.Login As Product
    testApp.Load The Admin Page
    testApp.Inspect A Pepper User
    testApp.Assign Admin Role
    Sleep  3s

Product can promote self
    [Tags]  Product
    testApp.Load The Homepage
    testApp.Login As Product
    testApp.Load The Admin Page
    testApp.Inspect Own User
    testApp.Assign Editor Role
    Sleep  3s

##################################################################################################
Testing test case
    [Tags]  Current
    testApp.Load The Homepage
    testApp.Login As Product
    testApp.Load The Admin Page
    testApp.Check Custom Banner
    testApp.Check Users
    testApp.Check Infraction Types
    testApp.Check Blacklists
    testApp.Check Referral Parameters
    testApp.Check Events
    testApp.Check Resources
    testApp.Check Static Pages
    testApp.Check Site Messages
    testApp.Flamedeer Game
    testApp.Auto
    testApp.Check Users

Avatars
    [Tags]  Avatar
    testApp.Check Merchants
    testApp.Check Groups

Create a User for Every Role
    [Tags]  Roles
    testApp.Load The Homepage
    testApp.Create New  Odmin
    testApp.Create New  Support
    testApp.Create New  Product
    testApp.Create New  Super_Mod
    testApp.Create New  Moderator
    testApp.Create New  Normal
    testApp.Create New  Editor
    testApp.Create New  SEO_Odmin
    testApp.Create New  SEO_Content
    testApp.Create New  Comm_Odmin
    testApp.Create New  Saler
    testApp.Create New  Merchant
    testApp.Create New  Marketing
    testApp.Create New  Expert
    testApp.Create New  Developer