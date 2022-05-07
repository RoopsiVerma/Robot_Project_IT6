*** Settings ***
Library     SeleniumLibrary
Library    Collections


*** Variables ***
${MY_NAME}      Roopsi verma
${ROLE}     Intern
@{COLORS}   grey    black   wine


*** Test Cases ***
TC1
    Log To Console    ${MY_NAME}
    
TC2
    Log To Console    ${MY_NAME}
    Log To Console    ${ROLE}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC3
    @{fruits}   Create List     apple   grapes   orange
    Log To Console    ${fruits}[1]
    Append To List    ${fruits}     mango
    Log    ${fruits}
    Remove Values From List  ${fruits}    grapes
    Log    ${fruits}
    Insert Into List    ${fruits}    0    pineapple
    Log    ${fruits}


TC4
    @{fruits}   Create List     apple   grapes      orange  mango
    FOR     ${i}    IN RANGE    0   4   1
    Log    ${fruits}[${i}]
    END


