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
    UploadFile    Choose File    ../QEA_B2B DemoSite/resources/QuickOrderTemplate (1).xlsx
    ClickText    Upload
    ExpectFileDownload
    QWeb.Click Text   Download Bulk Order Form
    VerifyFileDownload     60
    QWeb.LogScreenShot