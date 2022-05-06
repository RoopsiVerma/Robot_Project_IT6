*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser    url=https://www.goto.com/meeting/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=truste-consent-button
    Click Element    Link=Try Free
    Input Text    id=first-name    John
    Input Text    id=last-name    wick
    Input Text    id=login__email  John@gmail.com
    Input Text    id=contact-number    8989888
    Input Password    id=login__password    12@roopsi
    Select From List By Label    id=CompanySize    10 - 99
    Click Element    xpath=//button[text()='Start My Trial']

