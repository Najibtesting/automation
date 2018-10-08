*** Settings ***
Library  SeleniumLibrary
Library  ../Externalkeywords/userkeywords.py

Resource  ../Resources/Resources1.robot

Test Setup  Start and maximize  ${URL}  ${Browser}
Test Teardown  Close Browser window

*** Variables ***


*** Test Cases ***
Robot first Test case
    Create folder at runtime
    create folder argument  Najib222
    #from Resources
    #${Res}=  Start and maximize  ${URL}  ${Browser}
    #log  ${Res}
    #Input Text  name:fld_username  ${Res}

    #Open Browser  ${URL}  ${Browser}

    #Methode without argument
    Enter Username Password Email

    #Methode with argument
    Enter Address phone dob  tuinisia,50  3288911223

    #Clear Element Text  name:fld_username
    Select Radio Button  add_type  home
    Select from list by index  xpath=//select[@name="sex"]  2
    Select from list by index  xpath=//select[@name="country"]  75
    Select Checkbox  name:terms

    #Click Button  xpath://input[@type='submit']
    #Close Browser


Second Test Case
    #Start and maximize  ${URL}  ${Browser}
    Input Text  name:fld_username  secondtest
    Select Radio Button  add_type  office




*** Keywords ***
Enter Username Password Email
    #Input Text  name:fld_username  Najib7878
    Input Text  name:fld_password  Password
    Input Text  name:fld_cpassword  Password
    Input Text  xpath://input[@name='fld_email']  kokopko@gmail.com

#methode with argument
Enter Address phone dob
    [Arguments]  ${Address}  ${phone}
    Input Text  name:address  ${Address}
    Input Text  name:phone  ${phone}
