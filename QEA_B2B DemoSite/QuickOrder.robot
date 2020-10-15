*** Settings ***
Resource            ../resources/keywords.robot
Suite Setup         Setup Browser
Suite Teardown      End suite


*** Test Cases ***
Test cases for QuickOrder File Download
    [Documentation]  To verify the QuickOrder File Download
    [Tags]  QuickOrder File Download
    Appstate  login
    QWeb.Click Text  Quick Order
    ExpectFileDownload
    QWeb.Click Text   Download Bulk Order Form
    VerifyFileDownload     60
    QWeb.LogScreenShot