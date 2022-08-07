*** Settings ***
Documentation       Page Objects for Products Page


*** Variables ***
${PRODUCTS_APP_LOGO}                        css=.app_logo
${PRODUCTS_PAGE_TITLE}                      text=Products
${PRODUCTS_PAGE_ICON}                       css=.peek
${PRODUCT_SORT_CONTAINER}                   data-test=product_sort_container
${PRODUCT_BAGPACK_IMG}                      css=img[alt='Sauce Labs Backpack']
${PRODUCT_BAGPACK_ADD_TO_CART_BUTTON}       data-test=add-to-cart-sauce-labs-backpack
${CART_COUNT_VISIBLE}                       xpath=(//span[@class='shopping_cart_badge'])[1]
${SHOPPING_CART_LINK}                       css=a.shopping_cart_link
${BURGER_BUTTON}                            css=#react-burger-menu-btn
${LOGOUT_BUTTON}                            css=#logout_sidebar_link
