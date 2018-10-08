*** Settings ***
Library  SeleniumLibrary
#Resource  ../Externalkeywords/userkeywords.py

*** Variables ***
${Browser}  Chrome
${URL}  http://thetestingworld.com/testings/register.php

*** Keywords ***
Start and maximize
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    Maximize browser window
    ${Title}=  Get Title

    #display the log
    #log  ${Title}

    #return value
    [return]  ${Title}

Close Browser window
    Close Browser

Create folder at runtime
    creat_folder
    creat_sub_folder
    log  "Tasks was done successfully"

create folder argument
    [Arguments]  ${foldername}
    creatfoldero  ${foldername}