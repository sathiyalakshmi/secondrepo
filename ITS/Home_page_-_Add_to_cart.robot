*** Settings ***
Library           Selenium2Library

*** Test Cases ***
HP_ATC
    [Documentation]    Add to cart find in home page
    Open Browser    https://cortzuser:p0o!0pen@its-stg-itsstore.sparkred.com/    chrome
    ${Cart}=    Get Element Count    Partial link:Cart
    Maximize Browser Window
    Run Keyword If    ${Cart}>0    Test1

*** Keywords ***
Test1
    Log    Executed Test1 - Cart word is present in Homepage
    Close Browser
