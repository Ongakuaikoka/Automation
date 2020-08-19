*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ANY_THREAD} =  xpath=//a[contains(concat(' ',normalize-space(@class),' '),' cept-tt thread-link ')]
${ANY_COMMENT} =  xpath=//a[contains(concat(' ',normalize-space(@class),' '),' cept-comment-link ')]

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains Element  xpath=//*[@id="tour-filter"]/div/ul/li[2]/a

Click Comments Link
    Click Link  xpath=//a[@title="Comments"]

LandingPage.Click Comments Link Class
    Click Link  ${ANY_THREAD_COMMENTS}

Go To Any Thread
    Click Link  ${ANY_THREAD}

Load User Creation Page
    Go To  ${START_URL}/register