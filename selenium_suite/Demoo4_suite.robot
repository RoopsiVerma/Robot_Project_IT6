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
    Select From List By Label    name=CompanyEmployees      101 - 500 employees
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number


