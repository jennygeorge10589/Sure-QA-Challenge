*** Variables ***
${BASE_URL}    https://sure-qa-challenge.vercel.app/
${LANDING_PAGE_TITLE}    Hurricane Insurance
${ZIP_CODE_FIELD}    name=postalCode
${SUBMIT_BUTTON}   xpath=//button[@type='submit' and @tabindex='0']
${VALIDATION_MESSAGE}     xpath=//p[text()='Required']
${VALIDATION_MESSAGE2}    xpath=//p[text()='Invalid zip code']
${MATERIAL_QUESTION_HEADER}    xpath=//h1[text()='What type of material is your home constructed with?']
${BRICKS_LABEL}    css=input[name='buildingMaterial'][value='bricks']
${NEXT_BUTTON}    xpath=//button[span[text()='Next']]
${EMPTY_STRING}    ${EMPTY}
${YES_LABEL}        xpath=//span[text()='Yes']
${NO_LABEL}         xpath=//span[text()='No']
${WATER_QUESTION_HEADER}   xpath=//h1[text()='Is your home located within 1 mile of a body of water?']
${BUILDING_MATERIAL_DROPDOWN}    data-testid="bricks"
${PLAN_OPTIONS}    css=.plan
${STANDARD_HEADER}    xpath=//h3[text()='Standard']
${COMPLETE_HEADER}    xpath=//h3[text()='Complete']
${FLOOD_PROTECTION_CHECKBOX_CHECKED}    //input[@name='includeFloodProtection' and @type='checkbox' and @data-indeterminate='true']
${FLOOD_PROTECTION_CHECKBOX_UNCHECKED}  //input[@name='includeFloodProtection' and @type='checkbox' and @data-indeterminate='false']

