*** Test Cases ***

TC1
    Create Dictionary   path=D:\\Mine\\Demo1
    ${files}    List Files In Directory     path=D:\\Mine\\Company\\LTS
    Log To Console    ${files}
