*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_FIELD_CREATE} =  xpath=//*[@id="registerForm-username"]
${PASSWORD_FIELD_CREATE} =  xpath=//*[@id="registerForm-password"]
${EMAIL_FIELD_CREATE} =  xpath=//*[@id="registerForm-email"]


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${LOGIN_FIELD_CREATE}

Enter Credentials
    [Arguments]  ${name}
    Input Text  ${EMAIL_FIELD_CREATE}  ${name}@pepper.com
    Input Text  ${LOGIN_FIELD_CREATE}  ${name}
    Input Text  ${PASSWORD_FIELD_CREATE}  testpass

Accept AGB
    Click Element  xpath=//*[@id="registerForm"]/ul/li[6]/div/label/span[1]
    Click Button  Agree

Confirm Login
    Click Button  form_submit
    Sleep  1s

Verify Ads Loaded
    Wait Until Page Contains Element  xpath=//*[contains(@class,'popover-content popover-content--expand')]