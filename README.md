# Sure QA Challenge README

## Overview

This repository contains automated test cases written in Robot Framework, utilizing the SeleniumLibrary for web interactions. The tests cover various scenarios on a web application with multiple pages:

- **Landing Page**
- **Building Material Question Page**
- **Water Proximity Question Page**
- **Quote Page**

## Resource Files

- **`common_variables.robot`**: Contains common variables used across multiple test cases.
- **`LandingPage.robot`**: Contains keywords specific to interactions with the landing page.
- **`BuildingMaterialPage.robot`**: Contains keywords specific to interactions with the building material question page.
- **`WaterProximityPage.robot`**: Contains keywords specific to interactions with the water proximity question page.
- **`QuotePage.robot`**: Contains keywords specific to interactions with the quote page.

## Test Results and Run Command

Here is the report following the execution of the Test Cases in Robot Framework:

- All test cases are passing, with the exception of the "Scenario: Quotes Page (No for Water Proximity)." A bug affecting this test case is documented in the Bug Report sheet under B10.

![Screenshot 2024-08-20 at 1 20 21 PM](https://github.com/user-attachments/assets/79291c7f-0fb4-43ca-844f-7a1777014720)






To run the tests, use the following command in your CLI:
```sh
robot tests/testcases.robot


