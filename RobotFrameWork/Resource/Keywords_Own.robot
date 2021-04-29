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
    Page Should Contain Element         xpath:/html/body/app-root/div[1]/nav/div/ul/li[2]     #"Veterinarians" link
    Click Element                       xpath:/html/body/app-root/div[1]/nav/div/ul/li[1]

All Query
    Page Should Contain Element         //*[@routerlink="/owner"]    # click "all" link
    Click Element                       //*[@routerlink="/owner"]

    Page Should Contain                 Owners
    Page Should Contain Element         //*[@class="table table-striped"]
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[1]      Name
    Element Text Should be              //*[@class="table table-striped"]/thead/tr/th[2]      Address

