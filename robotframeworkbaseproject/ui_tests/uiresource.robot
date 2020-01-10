*** Settings ***
Documentation     A resource file with reusable keywords and variables.

Library     SeleniumLibrary
Library     ./DriverManager.py

*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${GOOGLE_HOME}  http://www.google.com

*** Keywords ***
Google Home Page Should Be Open
    Title Should Be    Google

Start Browser
    ${driver_path}=     Install Chrome Driver
    Create Webdriver    Chrome      executable_path=${driver_path}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Go To Google Home
    Go To    ${GOOGLE_HOME}
    Google Home Page Should Be Open

Search
    [Arguments]    ${query}
    Input Text    q    ${query}
    Click Button    btnK