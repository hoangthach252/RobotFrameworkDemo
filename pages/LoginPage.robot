*** Settings ***
Library    Browser

*** Variables ***
${USERNAME_TEXT_INPUT}        id=user-name
${PASSWORD_TEXT_INPUT}        id=password
${LOGIN_BTN}                  id=login-button

*** Keywords ***
Login To The Application With Credential    [Arguments]    &{credential_dict}
    Fill Text    ${USERNAME_TEXT_INPUT}    ${credential_dict}[username]
    Fill Text    ${PASSWORD_TEXT_INPUT}    ${credential_dict}[password]
    Click        ${LOGIN_BTN}


