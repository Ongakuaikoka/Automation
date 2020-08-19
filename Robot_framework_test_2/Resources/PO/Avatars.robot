*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ANY_THREAD} =  xpath=//a[contains(concat(' ',normalize-space(@class),' '),' cept-tt thread-link ')]
${ANY_COMMENT} =  xpath=//a[contains(concat(' ',normalize-space(@class),' '),' cept-comment-link ')]

*** Keywords ***

Check Web
    [Arguments]  ${size}  ${type}
    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    Should Be True  ${size} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x2} =  Convert To Integer  ${size}
    Should Be True  ${x2 * 2} == ${width}

Check Web One
    [Arguments]  ${size}  ${type}
    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    Should Be True  ${size} == ${width}

Check Web Four
    [Arguments]  ${size}  ${type}
    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    Should Be True  ${size} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x2} =  Convert To Integer  ${size}
    Should Be True  ${x2 * 2} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x3} =  Convert To Integer  ${size}
    Should Be True  ${x3 * 3} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_web_square_${size}_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x4} =  Convert To Integer  ${size}
    Should Be True  ${x4 * 4} == ${width}

Check Wide
    [Arguments]  ${type}
    Go To  ${START_URL}/beta_static/${type}/avatar_web_wide/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${size} =  Set Variable  144
    Should Be True  ${size} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_web_wide_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${size} =  Set Variable  144
    ${x2} =  Convert To Integer  ${size}
    Should Be True  ${x2 * 2} == ${width}

Check App
    [Arguments]  ${size}  ${place}  ${type}
    Go To  ${START_URL}/beta_static/${type}/avatar_app_square_${size}/${place}/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    Should Be True  ${size} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_app_square_${size}_2x/${place}/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x2} =  Convert To Integer  ${size}
    Should Be True  ${x2 * 2} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_app_square_${size}_3x/${place}/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x3} =  Convert To Integer  ${size}
    Should Be True  ${x3 * 3} == ${width}

    Go To  ${START_URL}/beta_static/${type}/avatar_app_square_${size}_4x/${place}/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${x4} =  Convert To Integer  ${size}
    Should Be True  ${x4 * 4} == ${width}

Check Tablet
    [Arguments]  ${type}
    Go To  ${START_URL}/beta_static/${type}/header_web_tablet/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${size1} =  Set Variable  1200
    ${size2} =  Set Variable  128
    Should Be True  ${size1} == ${width}
    Should Be True  ${size2} == ${height}

    Go To  ${START_URL}/beta_static/${type}/header_web_tablet_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${size1} =  Set Variable  1920
    ${size2} =  Set Variable  204
    Should Be True  ${size1} == ${width}
    Should Be True  ${size2} == ${height}

Check Header
    [Arguments]  ${type}
    Go To  ${START_URL}/beta_static/${type}/header_web_mobile/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${size1} =  Set Variable  480
    ${size2} =  Set Variable  140
    Should Be True  ${size1} == ${width}
    Should Be True  ${size2} == ${height}

    Go To  ${START_URL}/beta_static/${type}/header_web_mobile_2x/avatar/10_1.jpg
    Wait Until Page Contains Element  css=head > title
    ${width}  ${height} =  Get Element Size  xpath=//img[@style]
    ${size1} =  Set Variable  960
    ${size2} =  Set Variable  280
    Should Be True  ${size1} == ${width}
    Should Be True  ${size2} == ${height}
