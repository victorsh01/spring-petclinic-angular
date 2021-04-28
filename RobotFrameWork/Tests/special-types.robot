
*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is a test case
    [Documentation]  Special types
    [Tags]  Add new tags for pet types and special
    Open Browser  http://localhost:4200/  chrome
    Page Should Contain  home page
    Close Browser
