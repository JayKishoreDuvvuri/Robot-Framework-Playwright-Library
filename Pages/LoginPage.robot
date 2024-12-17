*** Settings ***
Documentation       Login Page Functionality

Library            Browser
Resource           ../Data/TestData.robot

*** Keywords ***
LoginPage.OpenApp
    New Browser    webkit    headless=False
    New Page    ${BASE_URL}

LoginPage.GetUrl
    [Arguments]    ${URL}
    Get Url    ==    ${URL}

LoginPage.GetTitle
    [Arguments]    ${TITLE}
    Get Title    ==    ${TITLE}

LoginPage.WaitForPageLoad
    Wait Until Network Is Idle

LoginPage.ElementVisible
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | visible

LoginPage.ElementNotVisible
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | hidden

LoginPage.ElementEnabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | enabled

LoginPage.ElementDisabled
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | disabled

LoginPage.ElementChecked
    [Arguments]    ${LOCATOR}
    Get Element States    ${LOCATOR}    validate    value | checked

LoginPage.WaitAndClick
    [Arguments]    ${LOCATOR}
    Wait For Elements State    ${LOCATOR}    enabled    timeout=2s
    Click    ${LOCATOR}

LoginPage.TypeText
    [Arguments]    ${LOCATOR}    ${TEST_DATA}
    Fill Text    ${LOCATOR}    ${TEST_DATA}
