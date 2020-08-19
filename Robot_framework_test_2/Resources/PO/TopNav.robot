*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOP_NAV_LOGIN} =  xpath=//*[@id="main"]/div[1]/header/div/div/menu/div/a[1]

*** Keywords ***
Click Login
    Click Link  ${TOP_NAV_LOGIN}

Click User
    Click Link  xpath=//*[contains(@class,'cept-action-user-profile')]

Logout
    Click Element  xpath=//*[@id="cept-navMenu-logout"]/button
