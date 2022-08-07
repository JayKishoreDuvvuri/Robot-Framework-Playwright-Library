*** Settings ***
Documentation       Products Page Functionality

Library             Browser
Resource            ../Data/TestData.robot
Resource            ../PageObjects/ProductsPage.robot


*** Keywords ***
ProductsPage.GetUrl
    [Arguments]    ${URL}
    Get Url    ==    ${URL}

ProductsPage.GetTitle
    [Arguments]    ${TITLE}
    Get Title    ==    ${TITLE}

ProductsPage.TitleVisible
    [Arguments]    ${LOGO}
    Get Element States    ${LOGO}    validate    value | visible

ProductsPage.LogoVisible
    [Arguments]    ${LOGO}
    Get Element States    ${LOGO}    validate    value | visible

ProductsPage.ImageVisible
    [Arguments]    ${IMAGE}
    Get Element States    ${IMAGE}    validate    value | visible

ProductsPage.BackPackImageVisible
    [Arguments]    ${BACKPACK_IMAGE}
    Get Element States    ${BACKPACK_IMAGE}    validate    value | visible

ProductsPage.ElementEnabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

ProductsPage.WaitAndClick
    [Arguments]    ${LOCATOR}
    Click    ${LOCATOR}

ProductsPage.CartCountVisible
    [Arguments]    ${COUNT}
    Get Element States    ${COUNT}    validate    value | visible
