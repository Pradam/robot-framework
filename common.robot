*** Settings ***
Documentation     An example resource file
Library    ExampleLibrary


*** Variables ***
${HOST}    Abhilash

*** Keywords ***
Open Login Page
    [Documentation]    Display Name
    Greet    ${HOST}