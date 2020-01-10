*** Settings ***
Documentation       A test suite containing API test example.
Resource            apiresource.robot

*** Test Cases ***
Getting employee data
    When I send a request to    employees
    Then I get a succesfull response

*** Keywords ***
