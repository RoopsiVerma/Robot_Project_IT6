*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser        browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File    xpath=//input[@type='file']    C:${/}Users${/}hp${/}OneDrive${/}Desktop${/}InternshipOfferLetterRoopsiVerma.pdf
    ${current_title}    Get Title
    Log To Console    ${current_title}
    ${loc}  Get Location
    Log To Console    ${loc}