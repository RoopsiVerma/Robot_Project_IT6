*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser        browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    # click on not now
    Click Element    id=wzrk-cancel
    Click Element    Link=For Employer
    Switch Window   MediBuddy LaunchPad
    Input Text    name=getInTouchName    Roopsi
    Input Text    name=getInTouchEmail    roopsiv26@gmail.com
    Input Text    name=getInTouchDesignation    Trainer
    Input Text    name=getInTouchEmpCount    40
    Input Text    name=getInTouchMobile    12347
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be    xpath=//div[@class='text-red-600 ml-2']    Mobile Number should be 10 digits



