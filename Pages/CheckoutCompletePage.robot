*** Settings ***
Documentation       Checkout Complete Page Functionality

Library             Browser
Resource            ../Data/TestData.robot
Resource            ../PageObjects/ProductsPage.robot


*** Keywords ***
CheckoutCompletePage.GetUrl
    [Arguments]    ${URL}
    Get Url    ==    ${URL}

CheckoutCompletePage.GetTitle
    [Arguments]    ${TITLE}
    Get Title    ==    ${TITLE}

CheckoutCompletePage.HeaderVisible
    [Arguments]    ${HEADER}
    Get Element States    ${HEADER}    validate    value | visible

 CheckoutCompletePage.HeaderAndMessagetextVisible
    [Arguments]    ${HEADER}    ${TEXT}
    Get Element States    ${HEADER}    validate    value | visible
    Get Element States    ${TEXT}    validate    value | visible

CheckoutCompletePage.PonyImagevisible
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

CheckoutCompletePage.BackHomeButtoNEnabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

CheckoutCompletePage.ClickBackHomeButton
    [Arguments]    ${LOCATOR}
    Click    ${LOCATOR}
