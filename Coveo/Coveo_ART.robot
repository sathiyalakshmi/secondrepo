*** Settings ***
Resource            ../coveo/coveo.keywords.robot
Suite Setup         Setup Browser
Suite Teardown      End suite
*** Test Cases ***

Test cases for Add to cart
   [Documentation]  To add the product to cart
    Appstate  login
    ClickText  Login
    TypeText  ShopLoginForm_Login  thisisforvalidation@gmail.com
    TypeText  ShopLoginForm_Password  iphone10
    ClickText  Sign in
    ClickElement  //div[@id\="header"]/div[3]/div/div[2]
    TypeText  SearchTerm  Computers
    ClickElement  //div[@id\="header-searchbox"]/form/button
    ClickText  Fujitsu
    ScrollTo  Fujitsu S26391-F6097-L324
    ClickText  Fujitsu S26391-F6097-L324
    ClickText  Add to Cart
    HoverText  Computers
    ClickText  Monitors
    ClickText  Fujitsu S26391-F6097-L324
    ClickText  Add to Cart
    ClickText  Logout
    ClickText  Login
    TypeText  ShopLoginForm_Login  fbirdo@test.intershop.de
    TypeText  ShopLoginForm_Password  !InterShop00!
    ClickText  Sign in
    ClickElement  //div[@id\="header"]/div[3]/div/div[2]
    TypeText  SearchTerm  Computers
    ClickElement  //div[@id\="header-searchbox"]/form/button
    ClickText  Fujitsu
    ScrollTo  Fujitsu S26391-F6097-L319
    ClickText  Fujitsu S26391-F6097-L319
    ClickText  Add to Cart
    HoverText  Computers
    ClickText  Monitors
    ClickText  Fujitsu S26391-F6097-L319
    ClickText  Add to Cart
    ClickText  Logout