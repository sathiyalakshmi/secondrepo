*** Settings ***
Resource            ../QEA_B2B DemoSite/keywords.robot
Suite Setup         Setup Browser
Suite Teardown      End suite

*** Test Cases ***
Test cases for Home Page
    [Documentation]  To verify the Home Page
    [Tags]  Home Page
    Appstate  login

Test cases for Global header
    [Documentation]  To verify Global header
    [Tags]  Global Header
    VerifyElement  //div[@id\="header-container"]
    VerifyElement  //div[@id\="globalnav"]/div[2]/ul/li[1]/a[1]
    ClickElement  //div[@id\="globalnav"]/div[2]/ul/li[1]/a[1]
    VerifyElement  //div[@id\="cp-placeholder"]/div[1]/div/h1
    VerifyElement  //div[@id\="globalnav"]/div[2]/ul/li[2]/a[1]
    ClickElement  //div[@id\="globalnav"]/div[2]/ul/li[2]/a[1]
    VerifyElement  //div[@id\="cp-placeholder"]/div[1]/div/h1
    VerifyElement  //div[@id\="globalnav"]/div[2]/ul/li[3]/a[1]
    ClickElement  //div[@id\="globalnav"]/div[2]/ul/li[3]/a[1]
    VerifyElement  //div[@id\="cp-placeholder"]/div[1]/div/h1
    VerifyText  Quick Order
    HoverText  Quick Order
    VerifyElement  //*[@id\="quikOrderDrop_1"]
    VerifyElement  //*[@id\="globalnav"]/div[2]/ul/li[4]/ul/div/div/div/form/div[1]/div/div[1]/div[2]/input
    LogScreenshot
    ClickText  Quick Order
    VerifyText  Current Order
    VerifyElement  //div[@id\="header"]/div[2]/a/img
    VerifyText  Login  
    ClickText  Login  
    VerifyText  Customer Login
    ClickText  Sign up
    VerifyText  Create New Customer Account
    VerifyElement  //div[@id\="header"]/div[3]/div/ul/li[2]/a
    ClickElement  //div[@id\="header"]/div[3]/div/ul/li[2]/a
    VerifyText  Compare
    VerifyElement  //div[@id\="header"]/div[3]/div/div[2]
    ClickElement  //div[@id\="header"]/div[3]/div/div[2]
    CaptureIcon  //div[@id\="header-searchbox"]/form/input[1]
    VerifyElement  //div[@id\="header"]/div[3]/div/a/span
    ClickElement  //div[@id\="header"]/div[3]/div/a/span
    VerifyText  Customer Login
    VerifyElement  //div[@id\="header"]/div[3]/div/div[3]/div[1]/a[1]/span/i
    ClickElement  //div[@id\="header"]/div[3]/div/div[3]/div[1]/a[1]/span/i
    CaptureIcon  //div[@id\="miniCart"]
    ClickText  Close
    VerifyElement  //div[@id\="header"]/div[3]/div/div[1]/div/a/i
    ClickElement  //div[@id\="header"]/div[3]/div/div[1]/div/a/i
    VerifyText  Language
    ClickText  Close

Test cases for Hero Banner
    [Tags]  Hero Banner
    ClickElement  //div[@id\="header"]/div[2]/a/img
    VerifyElement  //div[@id\="Q7usEAYUzcIAAAF0xyYf3Yxh"]/ol  
    # ClickElement  //div[@id\="EWSsEAYUeBgAAAF0Dh8TaHzB"]
    # VerifyText  Now Shopping by

Test cases for Featured Category
    [Tags]  Featured Category
    ClickElement  //div[@id\="header"]/div[2]/a/img
    VerifyText  Featured Categories
    VerifyElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[1]/div[1]/div/div/div[1]/div/div/div/a/img
    ClickElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[1]/div[1]/div/div/div[1]/div/div/div/a/img
    VerifyElement  //div[@id\="cp-placeholder"]/div[1]/div/h1
    ClickElement  //div[@id\="header"]/div[2]/a/img
    ClickElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[1]/div[1]/div/div/div[2]/div/div/div/a/h3
    VerifyElement  //div[@id\="cp-placeholder"]/div[1]/div/h1

Test cases for Featured Products
    [Tags]  Featured Products
    ClickElement  //div[@id\="header"]/div[2]/a/img
    VerifyText  Featured Products
    VerifyElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[2]/div[1]/div/div/div[1]/div/div/div/div[1]/a/div/span
    ClickElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[2]/div[1]/div/div/div[1]/div/div/div/div[1]/a/div/span
    VerifyElement  //div[@id\="prodimgcarousel"]/div/div[1]/div/img
    ClickElement  //div[@id\="header"]/div[2]/a/img
    HoverElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[2]/div[1]/div/div/div[1]/div/div/div/div[1]/a/div/span
    VerifyText  Add to Cart
    ClickText  Add to Cart
    CaptureIcon  //div[@id\="miniCart"]
    HoverElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[2]/div[1]/div/div/div[1]/div/div/div/div[1]/a/div/span
    VerifyText  Quick View
    ClickText  Quick View
    VerifyText  Availability
    ClickText  + Add to Cart
    CaptureIcon  //div[@id\="miniCart"]
    VerifyElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[2]/div[1]/div/div/div[1]/div/div/div/div[2]/a/span
    ClickElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[2]/div[1]/div/div/div[1]/div/div/div/div[2]/a/span
    VerifyElement  //div[@id\="prodimgcarousel"]/div/div[1]/div/img
    ClickElement  //div[@id\="header"]/div[2]/a/img
    
Test cases for Featured Brands
    [Tags]  Featured Brands
    ClickElement   //div[@id\="header"]/div[2]/a/img  70
    VerifyElement  //div[@id\="Pagelet_CBOsEAYdF9wAAAFxHDMZXRGZ"]/div[3]

Test cases for Footer
    [Tags]  Global Footer
    VerifyElement  //input[@id\="newsletter_email"]
    TypeText  EmailSignupForm_Email  test.sathiyalakshmi@gmail.Com
    ClickElement  //button[@id\="signup_button"]
    VerifyText  Thank you!
    ClickText  Ok
    ClickText  About Us
    VerifyText  Intershop Commerce Suite
    ClickText  Frequently Asked Questions
    VerifyText  Helpdesk
    ClickText  Order History
    VerifyText  Customer Login
    ClickText  Category Dummy 1
    ClickText  Product Dummy 1
    ClickText  Demo Content Disclaimer
    VerifyText  Demo Content Disclaimer
