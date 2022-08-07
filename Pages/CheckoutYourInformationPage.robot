*** Settings ***
Documentation       Checkout Your Information Page Functionality

Library             Browser
Resource            ../Data/TestData.robot
Resource            ../PageObjects/ProductsPage.robot


*** Keywords ***
CheckoutYourInformationPage.GetUrl
    [Arguments]    ${URL}
    Get Url    ==    ${URL}

CheckoutYourInformationPage.GetTitle
    [Arguments]    ${TITLE}
    Get Title    ==    ${TITLE}

CheckoutYourInformationPage.HeaderVisible
    [Arguments]    ${HEADER}
    Get Element States    ${HEADER}    validate    value | visible

CheckoutYourInformationPage.TypeText
    [Arguments]    ${LOCATOR}    ${TEST_DATA}
    Fill Text    ${LOCATOR}    ${TEST_DATA}

CheckoutYourInformationPage.ContinueButtoNEnabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

CheckoutYourInformationPage.ClickContinueButton
    [Arguments]    ${LOCATOR}
    Click    ${LOCATOR}
