*** Settings ***
Library    SeleniumLibrary
Resource   common_variables.robot


*** Keywords ***
And I had selected "Yes" for the Water Proximity question
     Click Element   ${YES_LABEL}

And I had selected "No" for the Water Proximity question
     Click Element   ${NO_LABEL}

Given I am on the Water Proximity question page
   Open Browser    ${BASE_URL}    chrome
   Input Text    ${ZIP_CODE_FIELD}    12345
   Click Button    ${SUBMIT_BUTTON}
   Wait Until Page Contains Element    ${MATERIAL_QUESTION_HEADER}
   Click Button    ${BRICKS_LABEL}
   Click Button  ${NEXT_BUTTON}
   Wait Until Page Contains Element    ${WATER_QUESTION_HEADER}


