*** Settings ***
Documentation     A resource file with reusable keywords and variables.

Library     RequestsLibrary

*** Variables ***
${API URL}      http://dummy.restapiexample.com/api/v1
${RESPONSE}     Actual value set dynamically at suite execution


*** Keywords ***
I send a request to
    [Arguments]    ${endpoint}
    Create Session  dummy_api  ${API URL}
    ${resp}=    Get Request     dummy_api   /${endpoint}
    Set Suite Variable  ${RESPONSE}     ${resp}

I get a succesfull response
    Should Be Equal As Strings      ${RESPONSE.status_code}     200
