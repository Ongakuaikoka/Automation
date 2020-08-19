*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_FIELD} =  xpath=//*[@id="loginModalForm-identity"]
${PASSWORD_FIELD} =  xpath=//*[@id="loginModalForm-password"]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${LOGIN_FIELD}

Enter Login
    Input Text  ${LOGIN_FIELD}  Nick.ulrix@gmail.com

Enter Password
    Input Text  ${PASSWORD_FIELD}  testpass

Enter Product Login
    Input Text  ${LOGIN_FIELD}  Product

Enter Support Login
    Input Text  ${LOGIN_FIELD}  Support


Confirm Login
    Click Button  form_submit
    Sleep  1s

