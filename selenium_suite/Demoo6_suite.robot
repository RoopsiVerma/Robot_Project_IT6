*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser        browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    link=phpMyAdmin »
    Switch Window   phpMyAdmin
    Input Text    id=input_username   admin
    Input Password   id=input_password    admin123
    Click Element    id=input_go
    Element Should contain    xpath=(//div[@role='alert'])[3]      Access denied for user
    Close Window
    Close Browser