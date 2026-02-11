*** Settings ***
Library          SeleniumLibrary
Resource         ../pages/loginPage.robot
Resource         ../pages/setup_teardown.robot
Resource         ../pages/homePage.robot
Resource         ../pages/checkoutPage.robot
Test Setup       open
Test Teardown    close

*** Test Cases ***
test processus achat
    login          standard_user    secret_sauce
    add to cart    Sauce Labs Backpack
    go to cart
    checkout       firstname=toto    lastname=tata    postalcode=010203
    check checkout success