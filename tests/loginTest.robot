*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/loginPage.robot
Resource         ../pages/setup_teardown.robot
Resource         ../pages/homePage.robot
Resource         ../variables/credentials.robot
Test Setup       open
Test Teardown    close

*** Test Cases ***
test success login
    [Tags]    POEI2-1064
    login    ${usernameCredential}    ${wrondPasswordCredential}
    check home page

test failed login
    [Tags]    POEI2-1067
    login    ${usernameCredential}    ${wrondPasswordCredential}
    check error message
