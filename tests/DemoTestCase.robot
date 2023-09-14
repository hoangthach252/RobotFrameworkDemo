*** Setting ***
Library     JSONLibrary
Resource    ../configs/TestConfigs.robot
Resource    ../pages/CommonPage.robot
Resource    ../pages/LoginPage.robot
Resource    ../pages/InventoryPage.robot
Resource    ../pages/CartPage.robot
Resource    ../pages/CheckoutInfoPage.robot
Resource    ../pages/CheckoutReviewPage.robot
Resource    ../pages/CheckoutCompletePage.robot

Suite Setup    New Browser    browser=${BROWSER}    headless=${HEADLESS}
Test Setup    New Context
Test Teardown    Close Context
Suite Teardown    Close Browser

Documentation   This suite includes 2 requested test cases



*** Test Cases ***

Scenario1: Verify the shopping cart quantity is updated properly when adding/removing item.    
    [tags]  test01
    ${login_user_json}    Load JSON From File    ${CURDIR}/../user_data/login_users.json
    
    Given The User Opens The Login Page
    And Login To The Application With Credential    &{login_user_json}[standard]
    When Add Item "Sauce Labs Backpack" Into/From Shoping Cart
    Then Shopping Cart Should Have "1" Item Added
    When Remove Item "Sauce Labs Backpack" Into/From Shoping Cart
    Then Shopping Cart Should Have "0" Item Added


Scenario2: Verify that the cart is checked out successfully.
    [tags]  test02
    ${login_user_json}    Load JSON From File    ${CURDIR}/../user_data/login_users.json
    ${user_address_json}    Load JSON From File    ${CURDIR}/../user_data/user_address.json

    Given The User Opens The Login Page
    And Login To The Application With Credential    &{login_user_json}[standard]
    When Add Items Below Into/From Shoping Cart    
    ...    Sauce Labs Bike Light    
    ...    Sauce Labs Fleece Jacket    
    And The User Opens The Shopping Cart
    Then There Should Be "2" Items Showed In The Shopping Cart Page
    When The User Checkouts The Cart
    And Fills Checkout Information And Continue To Checkout Overview    &{user_address_json}[thach_hoang]
    Then Quantity Of Each Item And Total Payment Are Shown
    When The User Finishes The Checkout
    Then The Checkout Complete Message Is Shown    
    ...    Thank you for your order!