*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    Go To  ${START_URL}/admin

Verify Page Loaded
    Wait Until Page Contains Element  xpath=//*[@id="quick-search-input"]

Go To Users
    Sleep  1s
    Click Link  xpath=//*[@href="/admin/users"]

Inspect User
    Sleep  3s
    Go To  ${START_URL}/admin/inspector/users/933456

Inspect Own User
    Sleep  3s
    Go To  ${START_URL}/admin/inspector/users/933455

Check Product Tools
    Wait Until Page Contains  Users
    Wait Until Page Contains  Infraction Types
    Wait Until Page Contains  Blacklists
    Wait Until Page Contains  Referral Parameters
    Wait Until Page Contains  Events
    Wait Until Page Contains  Resources
    Wait Until Page Contains  Static Pages
    Wait Until Page Contains  Site Messages
    Wait Until Page Contains  Flamedeer Game
    Wait Until Page Contains  Auto Scaling
    Wait Until Page Contains  Moderation Msg
    Wait Until Page Contains  Widgets
    Wait Until Page Contains  A/B Testing
    Wait Until Page Contains  Settings
    Wait Until Page Contains  Custom Banner

Check For Extra Product Tools
    Wait Until Page Contains Element  xpath=//*[@id="sidebar"]/ul/li[15]
    Page Should Not Contain Element  xpath=//*[@id="sidebar"]/ul/li[16]

Check Support Tools
    Wait Until Page Contains  Users
    Wait Until Page Contains  Trash Bin
    Wait Until Page Contains  Flamedeer Game

Check For Extra Support Tools
    Wait Until Page Contains Element  xpath=//*[@id="sidebar"]/ul/li[3]
    Page Should Not Contain Element  xpath=//*[@id="sidebar"]/ul/li[4]