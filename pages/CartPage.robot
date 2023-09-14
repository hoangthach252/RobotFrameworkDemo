*** Settings ***
Library    Browser

*** Variables ***
${CART_ITEM_NAME}       css=div.inventory_item_name
${CHECKOUT_BTN}         id=checkout


*** Keywords ***

There Should Be "${item_quatity}" Items Showed In The Shopping Cart Page
    ${item_list} =	Get Elements	${CART_ITEM_NAME} 
    Length Should Be	${item_list}    ${item_quatity}


The User Checkouts The Cart
    Click    ${CHECKOUT_BTN} 