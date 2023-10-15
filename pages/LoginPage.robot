*** Settings ***
Library    Browser

*** Variables ***
${USERNAME_TEXT_INPUT}        id=user-name
${PASSWORD_TEXT_INPUT}        id=password
${LOGIN_BTN}                  id=login-button

*** Keywords ***
Login To The Application With Credential    [Arguments]    &{credential_dict}
    ${password}    Set Variable    ${credential_dict}[password]
    Fill Text    ${USERNAME_TEXT_INPUT}    ${credential_dict}[username]
    Fill Secret    ${PASSWORD_TEXT_INPUT}    $password
    Click        ${LOGIN_BTN}


