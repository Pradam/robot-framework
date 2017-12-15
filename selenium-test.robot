*** Variables ***
${BROWSER}    chrome
${Delay}    2s
${LINK}    https://www.google.com/gmail/about/#
${myself}    pradamabhilash
${expected}    Prajayatna

*** Settings ***
Documentation    An Example to open web-browser using robot framework
Library    Selenium2Library
Library    ExampleLibrary

*** Test Cases ***
Testing the Browser
    [Setup]    
    Open browser    ${LINK}    ${BROWSER}
    Maximize Browser Window
    sleep    ${Delay}
    Click Link     //*[contains(text(), "Login")]
    sleep    ${Delay}
    Input Text    id=identifierId    ${myself}
    Click Element    //span[@class="RveJvd snByac"]
    ${password} =    Search Key
    sleep    ${Delay}
    Input Password    name=password    ${password}
    Click Element    //span[@class="RveJvd snByac"]
    sleep    ${Delay}
    Click Element    //span[@class="gb_ab gbii"]
    sleep    ${Delay}
    Click Link    //*[contains(text(), "Sign out")]

*** Keywords ***
Open Login Page
    Open Browser    http://prajayatna.mahiti.org/login/
    Title Should Be    ${expected}

Title Should Start With
    [Arguments]    ${expected}
    ${title} =    Get Title
    Should Start With    ${title}    ${expected}
