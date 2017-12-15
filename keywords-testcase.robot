*** Variables ***
${BROWSER}    chrome
${Delay}    2s
${LINK}    http://meal.mahiti.org/#/

*** Settings ***
Documentation    An Example to open web-browser using robot framework
Library    Selenium2Library
Library    ExampleLibrary

*** Test Cases ***
Example
    Open Login Page

Hello Pradam
    Pradam

*** Keywords ***
Open Login Page
    Open Browser    ${LINK}    ${BROWSER}
    Maximize Browser Window
    Input Text    name=username    pradam
    Input Password    name=password    pradam@21
    Wait Until Element Is Visible    //button[@class="button-submit"]
    Click Button    //button[@class="button-submit"]
    Wait Until Element Is Visible    //input[@type='radio' and @name='level']    10
    Select Radio Button    group_name=level    value=admin_level
    Click Button    //button[@class="button-listing"]