*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${checkoutButton}    id:checkout
${firstnameInput}    id:first-name    
${lastnameInput}     id:last-name
${postalcodeInput}   id:postal-code
${continueButton}    id:continue
${finishButton}      id:finish
${successMessage}    //h2[text() = "Thank you for your order!"]

*** Keywords ***
checkout
    [Arguments]      ${firstname}    ${lastname}    ${postalcode}
    Click Element    ${checkoutButton}
    Input Text       ${firstnameInput}     ${firstname}
    Input Text       ${lastnameInput}      ${lastname}
    Input Text       ${postalcodeInput}    ${postalcode}
    Click Element    ${continueButton}
    Click Element    ${finishButton}

check checkout success
    Element Should Be Visible  ${successMessage}  
