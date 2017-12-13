*** Settings ***
Documentation    An example test suite documentation with *some* _formatting_.
...              See test documentation for more documentation examples.
Library       ExampleLibrary
Metadata    Version        2.0
Metadata    More Info      For more information about *Robot Framework* see http://robotframework.org
Metadata    Executed At    \${HOST}

*** Variables ***
${MESSAGE}    Hello, world!
${result}     2.1 
${name}       pradam
${num}        10 
@{USER}       robot    robot
&{USERS}      first=pradam    second=pradam
${NAMEF}      Robot Framework
${VERSION}    2.0
${ROBOT}      ${NAMEF} ${VERSION}
@{MANY}       one    two    three    four
...           five    six    seven

*** Test Cases ***
Pradam Test
    [Documentation]    Robot test
    [Tags]    owner-mrx    not_ready
    Simple Key   
    Greet    ${MESSAGE}
    Greet    ${ROBOT}
    Greet    @{MANY}[-5]
    Multiply Two    ${result}

Another Test
    [Documentation]    Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

Returning Value
    [Documentation]    Return Value Testing
    ${result} =    Multiply Two    4.1
    Numbers Should Be Equal    ${result}    8.2
    ${str2} =   Catenate    SEPARATOR=---   Hello   world
    Should Be Equal    ${str2}   Hello---world
    ${x} =    Get Variable Value    ${name}    default

Failing Test
    [Documentation]    Comparsion Testing
    Numbers Should Be Equal     2   2
    Numbers Should Be Equal     20  20
    My Name     pradam

Just Failing the Test
    [Documentation]    Failing the
    Strings Should Be Equal    @{USER}
    Strings Should Be Equal    &{USERS}
    Numbers Should Be Equal     2   9

Template Testing
    [Documentation] Usage of Template
    [Template]    Greet
    ${MESSAGE}

Normal test case with embedded arguments
    The result of 1 + 1 should be 2
    The result of 1 + 2 should be 3

Template with embedded arguments
    [Template]    The result of ${calculation} should be ${expected}
    1 + 1    2
    1 + 2    3

Create a file Example
    Create Binary File    ${CURDIR}${/}input.data    Some text here${\n}on two lines

*** Keywords ***
The result of ${calculation} should be ${expected}
    ${result} =    Calculate    ${calculation}
    Should Be Equal    ${result}     ${expected}