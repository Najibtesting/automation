*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.basketuispmilano.com/privateapp/(X(1)S(nai1jg3bxikfwqoi3bywlpva))/Login.aspx?ReturnUrl=%2fPrivateApp%2fPrivate%2fAreaPrivata.aspx

*** Test Cases ***
TC001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Input Text  name:ctl00$mainContent$txtUserName  Test
    Input Text  name:ctl00$mainContent$txtUserPass  Test
    Select Checkbox  name:ctl00$mainContent$chkPersistCookie
