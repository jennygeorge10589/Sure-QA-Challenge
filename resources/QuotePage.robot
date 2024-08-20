*** Settings ***
Library    SeleniumLibrary
Resource   common_variables.robot


*** Keywords ***
Then I should see "Standard" and "Complete" plan options
    Wait until page contains Element   ${STANDARD_HEADER}
    Wait until page contains Element   ${COMPLETE_HEADER}

And I should see a disabled, checked checkbox with the label "Flood Protection Included" within the Complete plan
    Wait until page contains Element     ${FLOOD_PROTECTION_CHECKBOX_CHECKED}

And I should see an enabled, unchecked by default checkbox with the label "Include Flood Protection (+$XX)" within the Complete plan
    Wait until page contains Element     ${FLOOD_PROTECTION_CHECKBOX_UNCHECKED}

And I click the Next button
   Click Button  ${NEXT_BUTTON}

 When I select Yes option
     Click Element   ${YES_LABEL}

Then I should be navigated to the Water Proximity question page
    Wait until Page Contains    Is your home located within 1 mile of a body of water?
    Location Should Be    ${BASE_URL}water-proximity
    Close Browser

Then I should be navigated to the Quote page
      Wait until page contains  Your available plans
     Location Should Be    ${BASE_URL}quote
     Close Browser

When I have not selected any options
    Click Button     ${EMPTY}

Then the Next button should be disabled
    Element Should Be Disabled    ${NEXT_BUTTON}
    Close Browser

