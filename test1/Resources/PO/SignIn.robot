*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  xpath=//*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1
    Element Text Should Be  xpath=//*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1  Sign-In
