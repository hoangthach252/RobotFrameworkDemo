*** Settings ***
Library    Browser

*** Variables ***
${ITEM_QUANTITY}        css=div.cart_item > div.cart_quantity
${PAYMENT_SUM}        css=div.summary_total_label
${FINISH_BTN}        id=finish

*** Keywords ***
Quantity Of Each Item And Total Payment Are Shown
    ${item_list} =	Get Elements	${ITEM_QUANTITY}
    Length Should Be    ${item_list}    2
    FOR    ${item}    IN    @{item_list}
        Get Text    ${item}    ==    1
    END
    Get Element States    ${PAYMENT_SUM}    contains    visible


The User Finishes The Checkout
    Click    ${FINISH_BTN}
