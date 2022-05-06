*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser        browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    ${alert_text}     Handle Alert    action=ACCEPT
    Log To Console     ${alert_text}
    Log      ${alert_text}
