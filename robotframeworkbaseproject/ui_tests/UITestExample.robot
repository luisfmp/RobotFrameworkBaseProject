*** Settings ***
Documentation       A test suite containing example tests.
Suite Setup         Start Browser
Suite Teardown      Close Browser
Library             SeleniumLibrary
Resource            uiresource.robot

*** Test Cases ***
Search in google
    Given I open google
    When I search for "duck"
    Then I can see results

*** Keywords ***
I open google
    Go To Google Home

I search for "${search_query}"
    Search  ${search_query}

I can see results
    Page Should Contain Element     css:.mw