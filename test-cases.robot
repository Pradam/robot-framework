*** Settings ***
Library       ExampleLibrary

*** Variables ***
${MESSAGE}    Hello, world!
${result}     2.1 
${name}       pradam

*** Test Cases ***
Pradam Test
    [Documentation]    Robot test
    Greet    ${MESSAGE}
    Multiply Two    ${result}

Another Test
    [Documentation]    Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

Returning Value
    ${result} =    Multiply Two    4.1
    Numbers Should Be Equal    ${result}    8.2

Failing Test
    Numbers Should Be Equal     2   2
    Numbers Should Be Equal     20  20
    My Name     pradam

