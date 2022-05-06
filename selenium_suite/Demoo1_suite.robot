*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path      C:\\Users\\hp\\PycharmProjects\\robot_project\\Robot_suite\\selenium_suite\\drive
    Open Browser    url=https://www.facebook.com/     browser=chrome
    Input Text    id=email    roohv26@gmail.com
    Input Password    id=pass    Roohv26@#
    Click Element    name=login

