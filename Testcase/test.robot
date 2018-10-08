*** Settings ***
Library  Selenium2Library
Resource  ../Externalkeywords/userkeywords.py

#Test Setup  Start browser  ${URL}  ${Browser}
#Test Teardown  Close Browser window


*** Variables ***
${Browser}  Chrome
${URL}  http://glamm.com/demo_aviochem/

*** Test Cases ***
first test case  #wrong data
    Start browser  #${URL}  ${Browser}
    #First

#Second test case  #right user and wrong password


*** keywords ***

Start browser
    #[Arguments]  ${URL}  ${Browser}
    #Open Browser  ${URL}  ${Browser}
    creat_folder

First
    Input Text  name:loginForm:Customer  Najib1
    Input Text  name:loginForm:Username  Najib2
    Input Text  name:loginForm:inputPassword  Password
    #Click Button  id=loginForm:j_idt19     good for login
    Click Button  id=j_idt8:options_button  #good for setting
    #Select from list by index  xpath=//select[@id="j_idt8:options_menu"]  1
    #Click Button  span=ui-menuitem-text
    #Click Button  tabindex=-1



Close Browser window
    Close Browser