*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     Path     C:\\Users\\hp\\PycharmProjects\\robot_project\\selenium_suite\\drive
    Open Browser        browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Click Element    xpath=//div[text()='Messages']
    Unselect Frame      xpath=//iframe[contains(@src,'messages.php')]
    Switch Window   Add New
    Select From List By Label    id=form_note_type   Pharmacy
    Select From List By Label    id=form_messages_status    New
    Select From List By Index    id=users
    Input Text    id-note    Hello
    Click Element    id=newnote
    Page Should Contain Element    id=error_reply_to
    Click Element    id=send
