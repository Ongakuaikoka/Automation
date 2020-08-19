*** Settings ***
Documentation  Our Team Page
Library  SeleniumLibrary
*** Variables ***
${LAST_COMMENT} =  xpath=//*[@id="comments-last"]/div/div/div[2]/div/div[1]/a
${FE_EXPIRY_BUTTON} =  xpath=//*[contains(concat(' ',normalize-space(@class),' '),' cept-threadAdminOptions-expire ')]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${LAST_COMMENT}

Click Profile
    Click Element  ${LAST_COMMENT}

Check For Expire Button
    Wait Until Page Contains Element  ${FE_EXPIRY_BUTTON}