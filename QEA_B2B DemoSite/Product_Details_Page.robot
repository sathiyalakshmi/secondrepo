*** Settings ***
Resource            ../QEA_B2B DemoSite/keywords.robot
Suite Setup         Setup Browser
Suite Teardown      End suite

*** Test Cases ***
Test cases for Product Detail Page
    [Documentation]  To verify the Home Page
    [Tags]  PDP
    Appstate  login
    ClickText  Notebooks And PCs
    ClickText  Notebooks
    ClickText  Microsoft Surface Book 2
    VerifyElement  //div[@class\="breadcrumbs row"]
    VerifyElement  //div[@class\="product-img-thumbs"]
    VerifyElement  //div[@class\="quickzoom-img zoom-view"]
    VerifyText  Microsoft Surface Book 2
    VerifyText  SKU
    VerifyText  Brand
    VerifyElement  //div[@class\="current-price "]
    VerifyText  Availability
    VerifyElement  //div[@class\="product-variation-container"]
    DropDown  VariationAttribute_Attr_harddrivesize  1TB
    VerifyText  $ 3,299.00
    DropDown   VariationAttribute_Attr_harddrivesize  512GB
    VerifyText  $ 2,899.00
    DropDown  VariationAttribute_attr_displaysize  13.5"
    VerifyText  $ 2,499.00
    VerifyElement  //div[@class\="form-group has-feedback"]
    VerifyText  Add to Cart
    ClickText  Add to Cart
    CaptureIcon  //div[@id\="miniCart"]/div
    VerifyElement  //span[@class\="glyphicon glyphicon-heart-empty"]
    ClickElement  //span[@class\="glyphicon glyphicon-heart-empty"]
    VerifyText  Customer Login   30
    ClickElement  //div[@id\="header"]/div[2]/a/img
    ClickText  Notebooks And PCs
    ClickText  Notebooks
    ClickText  Microsoft Surface Book 2
    VerifyElement  //a[@class\="btn add-to-compare btn-default btn-white"] 
    ClickElement  //a[@class\="btn add-to-compare btn-default btn-white"] 
    VerifyText  Compare 
    ClickElement  //div[@id\="header"]/div[2]/a/img
    ClickText  Notebooks And PCs
    ClickText  Notebooks
    ClickText  Microsoft Surface Book 2
    VerifyElement  //span[@class\="glyphicon glyphicon-list"]
    ClickElement  //span[@class\="glyphicon glyphicon-list"]
    VerifyText  Customer Login   30
    ClickElement  //div[@id\="header"]/div[2]/a/img
    ClickText  Notebooks And PCs
    ClickText  Notebooks
    ClickText  Microsoft Surface Book 2
    VerifyElement  //span[@class\="glyphicon glyphicon-usd"]
    ClickElement  //span[@class\="glyphicon glyphicon-usd"]
    ClickElement  //div[@id\="header"]/div[2]/a/img
    ClickText  Notebooks And PCs
    ClickText  Notebooks
    ClickText  Microsoft Surface Laptop
    VerifyText  Description
    VerifyText  Reviews
    VerifyText  Recently Viewed
    HoverElement  //div[@class\="slick-slide slick-current slick-active"]
    VerifyText  Quick View
    ClickText Quick View
    ClickText  Add to cart
    VerifyText 2
    
    
