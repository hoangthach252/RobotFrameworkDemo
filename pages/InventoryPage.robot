*** Settings ***
Library    Browser

*** Variables ***
${CART_ICON}              id=shopping_cart_container
${CART_ICON_BADGE}        css=span.shopping_cart_badge

*** Keywords ***

${action:(Add|Remove)} Item "${item_name}" Into/From Shoping Cart
    ${ADD_TO_CART_LOCATOR}   Set Variable   //div[@class='inventory_item_name'][text()='${item_name}']/../../..//button
    Click    ${ADD_TO_CART_LOCATOR}

${action:(Add|Remove)} Items Below Into/From Shoping Cart
    [Arguments]    @{item_list}
    FOR    ${item_name}    IN    @{item_list}
        ${ADD_TO_CART_LOCATOR}   Set Variable   //div[@class='inventory_item_name'][text()='${item_name}']/../../..//button
        Click    ${ADD_TO_CART_LOCATOR}
    END


Shopping cart should have "${item_quantity}" item added
    IF    $item_quantity == "0"
        Get Element States    ${CART_ICON_BADGE}    ==    detached
    ELSE
        Get Text    ${CART_ICON_BADGE}    ==    ${item_quantity}
    END
    

The User Opens The Shopping Cart
    Click    ${CART_ICON}

