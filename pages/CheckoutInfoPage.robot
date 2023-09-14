*** Settings ***
Library    Browser

*** Variables ***
${CHECKOUT_BTN}         id=checkout
${FIRSTNAME_INPUT}      id=first-name
${LASTNAME_INPUT}       id=last-name
${POSTCODE_INPUT}       id=postal-code
${CONTINUE_BTN}         id=continue


*** Keywords ***
Fills Checkout Information And Continue To Checkout Overview 
    [Arguments]    &{infor_dict}
    Fill Text    ${FIRSTNAME_INPUT}    ${infor_dict}[first_name]
    Fill Text    ${LASTNAME_INPUT}     ${infor_dict}[last_name]
    Fill Text    ${POSTCODE_INPUT}     ${infor_dict}[post_code]
    Click        ${CONTINUE_BTN} 
