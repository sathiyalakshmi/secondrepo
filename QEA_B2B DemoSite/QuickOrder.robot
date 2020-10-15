*** Settings ***
Resource            ${CURDIR}${/}../QEA_B2B DemoSite/keywords.robot
Suite Setup         Setup Browser
Suite Teardown      End suite


*** Test Cases ***
Test cases for QuickOrder File Download
    [Documentation]  To verify the QuickOrder File Download
    [Tags]  QuickOrder File Download
    Appstate    Login
    QWeb.Click Text  Quick Order
    UploadFile    Choose File    ${CURDIR}${/}../QEA_B2B DemoSite/resources/QuickOrderTemplate-QEA_B2B.xls
    ClickText    Upload
    ExpectFileDownload
    QWeb.Click Text   Download Bulk Order Form
    VerifyFileDownload     60
    QWeb.LogScreenShot