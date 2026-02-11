*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${monURL}           https://www.saucedemo.com/
${BROWSER}          chrome

*** Keywords ***
open
    Open Browser      ${monURL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window

close
    Close Browser
    