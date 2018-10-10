*** Settings ***
Library  Selenium2Library


Test Setup  Start browser  ${URL}  ${Browser}
Test Teardown  Close Browser window

*** Variables ***
${Browser}  Chrome
${URL}  http://www.google.com

*** Test Cases ***
First test case
    Start browser  ${URL}  ${Browser}
    #end of first case

*** keywords ***

Start browser
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
