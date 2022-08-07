*** Comments ***
/* Scenario 1:
Login as a standard user to complete the checkout workflow

Scenario Description:
User logs into the website. User completes the checkout workflow and logs out from the application.

Test Steps:
1.    Login as a standard user
2.    User is on Products page
5.    Select an item from the Inventory list on Products page and click on Add to cart button
6.    Check the shopping cart is updated to “1” item and click on it
7.    User is navigated to Your Cart page and verify all the elements on Your cart page
8.    Click on Checkout button
9.    User is navigated to Checkout: Your Information page and verify all the elements on this page
10.    Fill in Firstname, Lastname and postal code
11.    Click on Continue button
12.    User is on Checkout: Overview page and verify all the elements on this page
13.    Click on Finish Button
14.    User navigates to Checkout: Complete page and completed the checkout workflow
15.    Verify the elements on Checkout: Complete page
16.    Click on Back Home button, user is navigated back to Products page
17.    User Clicks on the Burger button on Products Page
18.    User clicks on Logout Button from the side nav bar link
19.    User Logs out from the application
20.    User is on the Login page
 */


*** Settings ***
Documentation       User completes the checkout workflow on the Saucedemo app

Library             Browser
Resource            ../Data/TestData.robot
Resource            ../PageObjects/LoginPage.robot
Resource            ../PageObjects/ProductsPage.robot
Resource            ../PageObjects/YourCartPage.robot
Resource            ../PageObjects/CheckoutYourInformationPage.robot
Resource            ../PageObjects/ChekoutOverviewPage.robot
Resource            ../PageObjects/CheckoutCompletePage.robot
Resource            ../Pages/LoginPage.robot
Resource            ../Pages/ProductsPage.robot
Resource            ../Pages/YourCartPage.robot
Resource            ../Pages/CheckoutYourInformationPage.robot
Resource            ../Pages/ChekoutOverviewPage.robot
Resource            ../Pages/CheckoutCompletePage.robot


*** Test Cases ***
Login as a standard user to complete the checkout workflow
    LoginPage.OpenApp
    LoginPage.TypeText    ${USERNAME}    ${TEST_DATA_USERNAME}
    LoginPage.TypeText    ${PASSWORD}    ${TEST_DATA_PASSWORD}
    LoginPage.WaitAndClick    ${LOGIN_BUTTON}
    LoginPage.WaitForPageLoad
    ProductsPage.GetTitle    ${TEST_DATA_PRODUCTS_PAGE_TITLE}
    ProductsPage.GetUrl    ${TEST_DATA_PRODUCTS_PAGE_URL}
    ProductsPage.LogoVisible    ${PRODUCTS_APP_LOGO}
    ProductsPage.ImageVisible    ${PRODUCTS_PAGE_ICON}
    ProductsPage.BackPackImageVisible    ${PRODUCT_BAGPACK_IMG}
    ProductsPage.ElementEnabled    ${PRODUCT_BAGPACK_ADD_TO_CART_BUTTON}
    ProductsPage.WaitAndClick    ${PRODUCT_BAGPACK_ADD_TO_CART_BUTTON}
    ProductsPage.CartCountVisible    ${CART_COUNT_VISIBLE}
    ProductsPage.WaitAndClick    ${SHOPPING_CART_LINK}
    YourCartPage.HeaderVisible    ${YOUR_CART_PAGE_TITLE}
    YourCartPage.GetUrl    ${TEST_DATA_YOUR_CART_PAGE_URL}
    YourCartPage.InventoryItemNameVisible    ${INVENTORY_ITEM_NAME}
    YourCartPage.CheckoutButtonEnabled    ${CHECKOUT_BUTTON}
    YourCartPage.ClickCheckoutButton    ${CHECKOUT_BUTTON}
    CheckoutYourInformationPage.HeaderVisible    ${CHECKOUT_YOUR_INFORMATION_PAGE_TITLE}
    CheckoutYourInformationPage.GetUrl    ${TEST_DATA_CHECKOUT_YOUR_INFORMATION_PAGE_URL}
    CheckoutYourInformationPage.TypeText    ${FIRST_NAME}    ${TEST_DATA_FIRSTNAME}
    CheckoutYourInformationPage.TypeText    ${LAST_NAME}    ${TEST_DATA_LASTNAME}
    CheckoutYourInformationPage.TypeText    ${POSTAL_CODE}    ${TEST_DATA_POSTAL_CODE}
    CheckoutYourInformationPage.ContinueButtoNEnabled    ${CONTINUE_BUTTON}
    CheckoutYourInformationPage.ClickContinueButton    ${CONTINUE_BUTTON}
    ChekoutOverviewPage.HeaderVisible    ${CHECKOUT_OVERVIEW_PAGE_TITLE}
    ChekoutOverviewPage.GetUrl    ${CHECKOUT_OVERVIEW_PAGE_URL}
    ChekoutOverviewPage.InventoryItemNameVisible    ${CHECKOUT_OVERVIEW_PAGE_INVENTORY_ITEM_NAME}
    ChekoutOverviewPage.FinishButtonEnabled    ${FINISH_BUTTON}
    ChekoutOverviewPage.ClickFinishButton    ${FINISH_BUTTON}
    CheckoutCompletePage.HeaderVisible    ${CHECKOUT_COMPLETE_PAGE_TITLE}
    CheckoutCompletePage.GetUrl    ${CHECKOUT_COMPLETE_PAGE_URL}
    CheckoutCompletePage.HeaderAndMessagetextVisible
    ...    ${CHECKOUT_COMPLETE_PAGE_THANK_YOU_HEADER}
    ...    ${COMPLETE_TEXT_MESSAGE}
    CheckoutCompletePage.PonyImagevisible    ${PONY_EXPRESS_IMAGE}
    CheckoutCompletePage.BackHomeButtoNEnabled    ${BACK_HOME_BUTTON}
    CheckoutCompletePage.ClickBackHomeButton    ${BACK_HOME_BUTTON}
    ProductsPage.TitleVisible    ${PRODUCTS_PAGE_TITLE}
    ProductsPage.GetUrl    ${TEST_DATA_PRODUCTS_PAGE_URL}
    ProductsPage.WaitAndClick    ${BURGER_BUTTON}
    ProductsPage.WaitAndClick    ${LOGOUT_BUTTON}
    LoginPage.GetUrl    ${BASE_URL}
    LoginPage.ElementVisible    ${BOT_IMAGE}
