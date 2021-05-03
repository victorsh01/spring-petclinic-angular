*** Settings ***
Documentation        UI testing in PetClinic by Robot Framework
...                  this is to test funcitionalities of Veterinarians -- Feng
Resource             ../Resource/Keywords_Own.robot
Library              SeleniumLibrary
Test Setup          Generate Tests
Test Teardown       Close Active Browser

*** Variables ***
${BROWSER}      chrome
${URL}          http://localhost:4200


*** Test Cases ***
User Can Access The Web
    [Documentation]         Web users can access the web
    [Tags]                  access
    Go To Web
    Close Active Browser


*** Test Cases ***
Verify Owner Access and Query For All
    [Documentation]         users can access Owner query and add pets
    [Tags]                  Onwer
    Go To Web
    Click Owner
    All Query
    Close Active Browser

*** Test Cases ***
Add New Owner From All Qurey
    [Documentation]         users can add information
    [Tags]                  adding owner
    Go To Web
    Click Owner
    All Query
    Add Owner Value
    Close Active Browser

*** Test Cases ***
Edit Owner
    [Documentation]         Users can edit their information
    [Tags]                  editing owner
    Go To Web
    Click Owner
    All Query
    Edit Owner Value
    Close Active Browser


*** Test Cases ***
Add New Pet
    [Documentation]        Users can add pets
    [Tags]                 adding pet
    Go To Web
    Click Owner
    All Query
    Add Pet Value
    Close Active Browser

*** Test Cases ***
Edit Pet
    [Documentation]        Users can edit pets
    [Tags]                 editing pet
    Go To Web
    Click Owner
    All Query
    Edit Pet Value
    Close Active Browser

*** Test Cases ***
Delete Pet
   [Documentation]        Delete Pet
   [Tags]                 delete pet
   Go To Web
   Click Owner
   All Query
   Remove Pet Value
   Close Active Browser

