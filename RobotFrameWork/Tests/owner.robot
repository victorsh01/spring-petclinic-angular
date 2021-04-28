*** Settings ***
Documentation  testing spring pet clinic angular

Library     SeleniumLibrary

*** Test Case ***
user can add new owners and add pets
    [Documentation]                 testar så att owner funktionen på pet clinic fungerar som det ska
    [Tags]                          test 1

    Open Browser                           about:blank   chrome
    Go to                                  http://localhost:4200/


