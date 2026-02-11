*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/loginPage.robot
Resource         ../pages/setup_teardown.robot
Resource         ../pages/homePage.robot
Test Setup       open
Test Teardown    close

*** Test Cases ***
test ajout au panier
    [Tags]    POEI2-1070
    login          standard_user    secret_sauce
    add to cart    Sauce Labs Backpack
    check cart not empty