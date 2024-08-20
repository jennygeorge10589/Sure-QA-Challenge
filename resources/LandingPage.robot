*** Settings ***
Library    SeleniumLibrary
Resource   common_variables.robot


*** Keywords ***
Given I am on the landing page
    Open Browser    ${BASE_URL}    chrome
    Title Should Be    ${LANDING_PAGE_TITLE}

When I enter any 5-digit zip code
    Input Text    ${ZIP_CODE_FIELD}    12345

When I leave the zip code field empty
    Input Text    ${ZIP_CODE_FIELD}    ${EMPTY}

When I enter "1234" in the zip code field
    Input Text    ${ZIP_CODE_FIELD}    1234

And I submit the form
    Click Button    ${SUBMIT_BUTTON}

Then I should be navigated to the Building Material question page
    Wait until page contains Element  ${MATERIAL_QUESTION_HEADER}
    Location Should Be   ${BASE_URL}building-material
    Close Browser

Then I should see a validation message "Required"
     Wait until page contains Element    ${VALIDATION_MESSAGE}
     Close Browser

Then I should see a validation message "Invalid zip code"
    Wait until page contains Element   ${VALIDATION_MESSAGE2}
    Close Browser
