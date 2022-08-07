*** Settings ***
Documentation       Your Cart Page Functionality

Library             Browser
Resource            ../Data/TestData.robot
Resource            ../PageObjects/ProductsPage.robot


*** Keywords ***
YourCartPage.GetUrl
    [Arguments]    ${URL}
    Get Url    ==    ${URL}

YourCartPage.GetTitle
    [Arguments]    ${TITLE}
    Get Title    ==    ${TITLE}

YourCartPage.HeaderVisible
    [Arguments]    ${HEADER}
    Get Element States    ${HEADER}    validate    value | visible

 YourCartPage.InventoryItemNameVisible
    [Arguments]    ${INVENTORY_ITEM}
    Get Element States    ${INVENTORY_ITEM}    validate    value | visible

YourCartPage.CheckoutButtonEnabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

YourCartPage.ClickCheckoutButton
    [Arguments]    ${LOCATOR}
    Click    ${LOCATOR}
