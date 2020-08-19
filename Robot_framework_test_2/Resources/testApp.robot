*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/Profile.robot
Resource  ./PO/ThreadPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/LoginModal.robot
Resource  ./PO/AdminPage.robot
Resource  ./PO/UserInspector.robot
Resource  ./PO/Avatars.robot
Resource  ./PO/CreateUserPage.robot

*** Keywords ***
Load The Homepage
    LandingPage.Load
    LandingPage.Verify Page Loaded

Go To Thread Comments
    LandingPage.Click Comments Link
    ThreadPage.Verify Page Loaded
    Sleep  5s

Go To Profile
    ThreadPage.Click Profile
    Profile.Verify Page Loaded

Login
    TopNav.Click Login
    LoginModal.Verify Page Loaded
    LoginModal.Enter Login
    LoginModal.Enter Password
    LoginModal.Confirm Login
    LandingPage.Verify Page Loaded
    Reload Page

Login As Product
    TopNav.Click Login
    LoginModal.Verify Page Loaded
    LoginModal.Enter Product Login
    LoginModal.Enter Password
    LoginModal.Confirm Login
    LandingPage.Verify Page Loaded
    Reload Page

Test This
    LandingPage.Click Comments Link Class

Load The Admin Page
    AdminPage.Load
    AdminPage.Verify Page Loaded

Inspect A Pepper User
    AdminPage.Go To Users
    AdminPage.Inspect User
    UserInspector.Verify Page Loaded

Inspect Any User
    AdminPage.Go To Users
    AdminPage.Inspect User
    UserInspector.Verify Page Loaded Support

Inspect Own User
    AdminPage.Go To Users
    AdminPage.Inspect Own User
    UserInspector.Verify Page Loaded

Check Available Roles
    UserInspector.Check Roles

Check Admin Tools
    AdminPage.Check Product Tools
    AdminPage.Check For Extra Product Tools

Load Listing Page
    LandingPage.Go To Any Thread
    ThreadPage.Verify Page Loaded

Assign Admin Role
    UserInspector.Promote to Admin

Assign Editor Role
    UserInspector.Promote to Editor

Check For Expire Button
    ThreadPage.Check For Expire Button

Login As Support
    TopNav.Click Login
    LoginModal.Verify Page Loaded
    LoginModal.Enter Support Login
    LoginModal.Enter Password
    LoginModal.Confirm Login
    LandingPage.Verify Page Loaded
    Reload Page

Check Support Inspector
    UserInspector.Check Main Tools
    UserInspector.Check Right Panel
    UserInspector.Check Extra Tools

Check Support Tools
    AdminPage.Check Support Tools
    AdminPage.Check For Extra Support Tools

Go To Custom Banner
    AdminPage.Select Custom Banner
    AdminPage.Verify Banner Loaded

Check Custom Banner
    CustomBanner.

Check Merchants
    Avatars.Check Web  22  merchants
    Avatars.Check Web  38  merchants
    Avatars.Check Web  54  merchants
    Avatars.Check Web  70  merchants
    Avatars.Check Web  94  merchants
    Avatars.Check Web  112  merchants
    Avatars.Check Web  160  merchants
    Avatars.Check Web  228  merchants
    Avatars.Check Wide  merchants

    Avatars.Check App  20  avatar_20  merchants
    Avatars.Check App  32  avatar_32  merchants
    Avatars.Check App  40  avatar_40  merchants
    Avatars.Check App  88  avatar  merchants


    Avatars.Check Header  merchants
    Avatars.Check Tablet  merchants

Check Groups
    Avatars.Check Web  22  thread_groups
    Avatars.Check Web  38  thread_groups
    Avatars.Check Web  54  thread_groups
    Avatars.Check Web  70  thread_groups
    Avatars.Check Web  94  thread_groups


    Avatars.Check App  20  avatar_20  thread_groups
    Avatars.Check App  32  avatar_32  thread_groups
    Avatars.Check App  40  avatar_40  thread_groups
    Avatars.Check App  88  avatar  thread_groups


    Avatars.Check Header  thread_groups
    Avatars.Check Tablet  thread_groups

Create New
    [Arguments]  ${Name}
    LandingPage.Load User Creation Page
    CreateUserPage.Verify Page Loaded
    CreateUserPage.Enter Credentials  ${Name}
    CreateUserPage.Accept AGB
    CreateUserPage.Confirm Login
    LandingPage.Verify Page Loaded
    Reload Page
    testApp.Renew
    Sleep  10s

Renew
    Close Browser
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window


