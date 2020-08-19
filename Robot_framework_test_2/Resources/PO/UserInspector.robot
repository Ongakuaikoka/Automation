*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***

Verify Page Loaded

    Wait Until Page Contains  Make

Verify Page Loaded Support
    Wait Until Page Contains Element  xpath=//*[@ng-click="resendAuthEmail()"]

Promote to Admin
    Click Link  xpath=//*[@ng-click="makeAdmin()"]
    Wait Until Page Contains  Admin rights can't be revoked by you afterwards
    Sleep  1s
    Click Link  xpath=//*[@class="btn btn-primary"]
    Wait Until Page Contains  User promoted

Promote to Editor
    Click Link  xpath=//*[@ng-click="makeEditor()"]
    Wait Until Page Contains  Are you sure you want to make the user an editor
    Sleep  1s
    Click Link  xpath=//*[@class="btn btn-primary"]
    Wait Until Page Contains  User Promoted

Check Roles
    Wait Until Page Contains  Make administrator
    Wait Until Page Contains  Make moderator
    Wait Until Page Contains  Make editor
    Wait Until Page Contains  Make SEO Admin
    Wait Until Page Contains  Make SEO Content
    Wait Until Page Contains  Make commercial admin
    Wait Until Page Contains  Make sales team
    Wait Until Page Contains  Make merchant
    Wait Until Page Contains  Make super mod
    Wait Until Page Contains  Make marketing
    Wait Until Page Contains  Make expert
    Wait Until Page Contains  Make developer
    Wait Until Page Contains  Make Customer Support
    Wait Until Page Contains  Make product

Check Main Tools
    Wait Until Page Contains Element  xpath=//*[@ng-click="editUser('username')"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="editUser('title')"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="editUser('email')"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="activateUser()"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="deleteQuote()"]
    Wait Until Page Contains Element  xpath=//*[contains(concat(' ',normalize-space(@class),' '),' span9 text-right ')]

Check Right Panel
    Wait Until Page Contains Element  xpath=//*[@ng-click="sendResetPassword()"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="resendAuthEmail()"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="clearSocialAccount()"]
    Wait Until Page Contains Element  xpath=//*[@href="/admin/log-me-in-as-user/933456"]
    Wait Until Page Contains Element  xpath=//*[@ng-click="deleteUser()"]


Check Extra Tools
    Page Should Not Contain Element  xpath=//*[@ng-click="deleteComments()"]
    Page Should Not Contain Element  xpath=//*[@ng-click="deleteThreads()"]
    Page Should Not Contain Element  xpath=//*[@ng-click="openBanModal(user, true)"]

