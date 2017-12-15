*** Variables ***
${BROWSER}    chrome
${Delay}    2s
@{SampleList}    1    5    6    9    10
&{SampleDict}    name=pradam    home=doddaballapura

*** Settings ***
Documentation    An Example to open web-browser using robot framework
Library    Selenium2Library
Library    ExampleLibrary
Resource    common.robot
Variables    vars_file.py

*** Test Cases ***
Hello Pradam
    Pradam
    Greet   ${POG.name}
    ${POG.name} =    Set Variable    pradam
    ${POG.age} =    Set Variable    52
    Greet    ${DICTIONARY[2]}
    Open Login Page

List Type
    Just Checking the List    ${SampleList}

Dict Type
    Take Dict    ${SampleDict}

*** Keywords ***
Just Checking the List
    [Arguments]    @{SampleList}
    Take List    @{SampleList}

Just Checking the Dict
    [Arguments]    &{SampleDict}
    Take Dict    &{SampleDict}