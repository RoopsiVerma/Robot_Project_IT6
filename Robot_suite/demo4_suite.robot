*** Settings ***
Library    OperatingSystem
*** Variables ***
@{COLORS}       red     yellow  green
&{MY_DETAILS}   name=roopsi     role=intern     location=lko


*** Test Cases ***
TC1
    Log To Console    &{MY_DETAILS}[name]
    Log To Console    &{MY_DETAILS}[role]

TC2

    FOR     ${i}    IN RANGE    0   4   1
        Log    ${COLORS}[${i}]
        Log To Console    ${COLORS}[${i}]
    END

TC3
    FOR    ${i}    IN    @{COLORS}
        Log    ${i}
        Log To Console    ${i}
     END

    END

