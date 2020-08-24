*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${number}         10

*** Test Cases ***
TC1
    [Tags]    TC1
    Open Browser    https://mail.google.com/mail/u/0/    chrome
    Maximize Browser Window
    Close Browser

TC2
    [Tags]    TC2
    ${a}    Set variable    Hi
    Log    ${a}
    ${b}    Set Variable If    ${number}>1    Yes    No
    Log    ${b}
