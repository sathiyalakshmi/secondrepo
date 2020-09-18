*** Settings ***
Library                QWeb
# Suitable libraries as per the use case
Library                String

*** Variables ***
${BROWSER}             chrome
${Url}     https://dssdemo71031b2x.intershopsandbox.com/INTERSHOP/web/WFS/inSPIRED-Coveo_B2B-Site/en_US/-/USD/ViewHomepage-Start
${User_id}  qavalidation@mail.com
${Pass}  test123

*** Keywords ***
Setup Browser
   Open Browser       about:blank    ${BROWSER}
   
End suite
   Close Browser
Appstate
   [Documentation]    AppState handler
    [Arguments]        ${state}
    ${state}=          Convert To Lowercase    ${state}
    Run Keyword If     '${state}' == 'login'
     ...                Login
#     Run Keyword If     '${state}' == 'home'
#     ...                Home

Login
  Goto  ${Url}
  TypeText  DefaultUserLogin_Login  ${User_id}
  TypeText  DefaultUserLogin_Password  ${Pass}
  ClickText  Log In