*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser    url=https://www.salesforce.com/in/form/signup/freetrial-sales/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    name=UserFirstName    John
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail  John@gmail.com
    Select From List By Label    name=UserTitle     IT Manager
    Input Text    name=CompanyName    LT
    Select From List By Value    name=CompanyEmployees      250
    Select From List By Label    name=CompanyCountry        United Kingdom
    Click Element    xpath=    


