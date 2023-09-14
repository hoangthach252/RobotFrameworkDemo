*** Settings ***
Library    Browser

*** Variables ***
${CHECKOUT_COMPLETE_MSG}       css=h2.complete-header


*** Keywords ***

The Checkout Complete Message Is Shown    [Arguments]    ${message}
    Get Text    ${CHECKOUT_COMPLETE_MSG}    ==    ${message}



