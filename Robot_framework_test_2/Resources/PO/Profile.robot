*** Settings ***
Documentation  Top navigation
Library  SeleniumLibrary

*** Variables ***
${FOLLOW_BUTTON} =  xpath=//a[contains(concat(' ',normalize-space(@class),' '),' cept-followUserBtn ')]


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${FOLLOW_BUTTON}
    Sleep  2s

