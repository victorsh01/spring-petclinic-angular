*** Settings ***
Documentation        UI testing in PetClinic by Robot Framework
...                  this is to test funcitionalities of Veterinarians -- Feng
Resource             ../Resource/Keywords_Own.robot
Library              SeleniumLibrary
Test Setup          Generate Tests
Test Teardown       End the test

*** Variables ***
${BROWSER}      chrome
${URL}          http://localhost:4200


*** Test Cases ***
User Can Access The Web
    [Documentation]         Web users can access the web
    [Tags]                  access
    Go To Web


*** Test Cases ***
Verify Veterinarians Access and Query For All
    [Documentation]         users can access the Veterinarians to query and add pets
    [Tags]                  veterinarians
    Go To Web
    Click Veterinarians
    All Query

*** Test Cases ***
Add Vets From All Qurey
    [Documentation]         users can add pets
    [Tags]                  adding
    Go To Web
    Click Veterinarians
    All Query
    Click Add Vet
    Create New Pet          Joe     Biden
    Confirm To Add New Pet      Joe Biden



