*** Settings ***
Library    Telnet
*** Test Cases ***
TC1
    Log To Console    Roopsi Verma
    Log To Console    robot session

TC2
    Log To Console    hello


TC3
    ${my_name}     Set Variable     Roopsi
    Log To Console    ${my_name}
    Log     ${my_name}


TC4
    ${radius}   Set Variable    10
    ${result}   Evaluate    3.14*${radius}+${radius}
    Log To Console    ${result}

TC5
    ${radius}   Set Variable    5
    ${result}   Evaluate    ${radius}*${radius}
    Log To Console    ${result}

TC6
    ${radius}   Set Variable    5
    ${result}   Evaluate    1/2*${radius}*${radius}
    Log To Console    ${result}

TC7
    ${height}   Set Variable    25
    ${base}   Set Variable    1
    Log To Console    ${base}
    ${result}   Evaluate    ${base}+${height}/2
    Log To Console    ${result}


TC8
    ${base1}   Set Variable    6
    ${base2}   Set Variable    8
    ${height}   Set Variable    2
    ${result}   Evaluate    (${base1}+${base2})/2*${height}
    Log To Console    ${result}

TC9
   ${date}  Get Current Date



