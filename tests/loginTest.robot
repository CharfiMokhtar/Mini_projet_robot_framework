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
    login    ${usernameCredential}    ${passwordCredential}
    check home page

test failed login
    login    ${usernameCredential}    ${wrondPasswordCredential}
    check error message
