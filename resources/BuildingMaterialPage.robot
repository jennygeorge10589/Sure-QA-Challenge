*** Settings ***
Library    SeleniumLibrary
Resource   common_variables.robot


*** Keywords ***
Given I am on the Building Material question page
   Open Browser     https://sure-qa-challenge.vercel.app/building-material  chrome
   Wait Until Page Contains Element    ${MATERIAL_QUESTION_HEADER}

When I select an option
    Click Button    ${BRICKS_LABEL}