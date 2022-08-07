*** Settings ***
Documentation       Checkout Overview Page Functionality

Library             Browser
Resource            ../Data/TestData.robot
Resource            ../PageObjects/ProductsPage.robot


*** Keywords ***
ChekoutOverviewPage.GetUrl
    [Arguments]    ${URL}
    Get Url    ==    ${URL}

ChekoutOverviewPage.GetTitle
    [Arguments]    ${TITLE}
    Get Title    ==    ${TITLE}

ChekoutOverviewPage.HeaderVisible
    [Arguments]    ${HEADER}
    Get Element States    ${HEADER}    validate    value | visible

 ChekoutOverviewPage.InventoryItemNameVisible
    [Arguments]    ${INVENTORY_ITEM}
    Get Element States    ${INVENTORY_ITEM}    validate    value | visible

ChekoutOverviewPage.FinishButtonEnabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

ChekoutOverviewPage.ClickFinishButton
    [Arguments]    ${LOCATOR}
    Click    ${LOCATOR}
