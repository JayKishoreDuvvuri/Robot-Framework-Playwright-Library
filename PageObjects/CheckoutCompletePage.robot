*** Settings ***
Documentation       Page Objects for Checkout Overview Page


*** Variables ***
${CHECKOUT_COMPLETE_PAGE_TITLE}                 css=.title
${CHECKOUT_COMPLETE_PAGE_THANK_YOU_HEADER}      css=.complete-header
${COMPLETE_TEXT_MESSAGE}                        css=.complete-text
${PONY_EXPRESS_IMAGE}                           css=img[alt='Pony Express']
${BACK_HOME_BUTTON}                             data-test=back-to-products
