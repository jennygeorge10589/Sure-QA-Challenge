*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_variables.robot
Resource    ../resources/LandingPage.robot
Resource    ../resources/BuildingMaterialPage.robot
Resource    ../resources/WaterProximityPage.robot
Resource    ../resources/QuotePage.robot


*** Test Cases ***
Scenario: Landing Page
    Given I am on the landing page
    When I enter any 5-digit zip code
    And I submit the form
    Then I should be navigated to the Building Material question page

Scenario: Landing Page Validation Messages
    Given I am on the landing page
    When I leave the zip code field empty
    And I submit the form
    Then I should see a validation message "Required"

    Given I am on the landing page
    When I enter "1234" in the zip code field
    And I submit the form
    Then I should see a validation message "Invalid zip code"

Scenario: Building Material Page Question
    Given I am on the Building Material question page
    When I select an option
    And I click the Next button
    Then I should be navigated to the Water Proximity question page

Scenario: Water Proximity Page Question
    Given I am on the Water Proximity question page
    When I select Yes option
    And I click the Next button
    Then I should be navigated to the Quote page

Scenario: Quotes Page (No for Water Proximity)
    Given I am on the Water Proximity question page
    And I had selected "No" for the Water Proximity question
    And I click the Next button
    Then I should see "Standard" and "Complete" plan options
    And I should see a disabled, checked checkbox with the label "Flood Protection Included" within the Complete plan

Scenario: Quotes Page (Yes for Water Proximity)
    Given I am on the Water Proximity question page
    And I had selected "Yes" for the Water Proximity question
    And I click the Next button
    Then I should see "Standard" and "Complete" plan options
    And I should see an enabled, unchecked by default checkbox with the label "Include Flood Protection (+$XX)" within the Complete plan










