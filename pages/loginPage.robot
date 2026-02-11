*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${usernameInput}    id:user-name
${passwordInput}    id:password
${clickButton}      id:login-button
${errorMessage}     //h3[@data-test="error"]

*** Keywords ***
login
    [Arguments]       ${username}        ${password}
    Input Text        ${usernameInput}   ${username}
    Input Password    ${passwordInput}   ${password}
    Click Button      ${clickButton}

check error message
    Element Should Be Visible    ${errorMessage}
    
