*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${shoppingCartBadge}  //span[@data-test = "shopping-cart-badge"]
${shoppingCartLink}   //a[@data-test = "shopping-cart-link"]

*** Keywords ***
check home page
    Location Should Be    url=https://www.saucedemo.com/inventory.html

add to cart    
    [Arguments]      ${itemToAdd}
    Click Element    //div[text() = "${itemToAdd}"]/ancestor::div[@data-test="inventory-item-description"]//button   

go to cart
    Click Element    ${shoppingCartLink}

check cart not empty
    Element Should Be Visible    ${shoppingCartBadge}
    
