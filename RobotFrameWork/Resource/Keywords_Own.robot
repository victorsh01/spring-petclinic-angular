*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Generate Tests
    Open Browser            about:blank     ${BROWSER}

# Access web page
Go To Web
    Load Web
    Verify Page Loaded
Load Web
    Go To                   ${URL}
Verify Page Loaded
    ${GET_TITLE}            Get Title
    Should Be Equal         ${GET_TITLE}        SpringPetclinicAngular
    Page Should Contain                         Welcome to Petclinic

Click Owner
    Page Should Contain Element         xpath:/html/body/app-root/div[1]/nav/div/ul/li[2]     #"Owner" link
    Click Element                       xpath:/html/body/app-root/div[1]/nav/div/ul/li[3]

All Query
    Page Should Contain Element         //*[@routerlink="/owner"]    # click "all" link
    Click Element                       //*[@routerlink="/owner"]

    Page Should Contain                 Owners
    Page Should Contain Element         //*[@class="table table-striped"]
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[1]      Name
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[2]      Address
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[3]      City
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[4]      Telephone
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[5]      Pets

    # way_1: absoulte xpath
    Page Should Contain Button          xpath:/html/body/app-root/app-owner-list/div/div/div/form/div[6]/button[2]
    Element Text Should Be              xpath:/html/body/app-root/app-owner-list/div/div/div/form/div[6]/button[2]        Add Owner

    # way_2: locating by element's text
    Page Should Contain Button          xpath://*[contains(text(),"Add Owner")]

    close browser

    ${linenumber}=          Get Element Count       //*[@id="vets"]/tbody/tr
    Run keyword if          ${linenumber}>0         Verify Edit And Delete

