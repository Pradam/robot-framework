*** Variables ***
${BROWSER}    chrome
${Delay}    2s
${LINK}    https://www.google.com/gmail/about/#
${myself}    pradamabhilash

*** Settings ***
Documentation    An Example to open web-browser using robot framework
Library    Selenium2Library
Library    ExampleLibrary

*** Test Cases ***
Testing the Browser
    Open browser    ${LINK}    ${BROWSER}
    sleep    ${Delay}
    Click Link     //*[contains(text(), "Sign In")]
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
