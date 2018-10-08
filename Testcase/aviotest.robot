*** Settings ***
Library  Selenium2Library
#Resource  ../Externalkeywords/userkeywords.py

#Test Setup  Start browser  ${URL}  ${Browser}
#Test Teardown  Close Browser window


*** Variables ***
${Browser}  Chrome
${URL}  http://demoaviochem:demo2018@glamm.com/demo_aviochem/

*** Test Cases ***

First test case
    Start browser  ${URL}  ${Browser}

*** keywords ***

Start browser
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize browser window
    Enter Reach Manager
    Enter Procurement
    Close Browser window


Close Browser window
    Close Browser

Enter Reach Manager
    Click Link  (//a)[1]
    Input Text  id:topsearch  hello First part
    Click Link  (//a)[11]
    Click Element  class:dropdown-trigger
    Click Element  id:dropdown1


Enter Procurement
    Click Link  (//a)[2]
    Input Text  id:topsearch  hello Second part
    Click Element  class:dropdown-trigger
    Click Element  id:dropdown1