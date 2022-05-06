*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    Link=Create New Account
    Input Text    name=firstname    Roopsi
    Input Text    name=lastname    Verma
    Input Text    name=reg_email__   roopsiv26@gmail.com
    Input Text    name=reg_email_confirmation__    roopsiv26@gmail.com
    Input Password    name=reg_passwd__    12@roopsi
    Select From List By Label    id=day     26
    Select From List By Label    id=month   Sep
    Select From List By Label    id=year    2000
    Click Element    xpath=//input[@value='-1']
    Click Element    name=websubmit
    Close Browser
