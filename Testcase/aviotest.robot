*** Settings ***
Library  Selenium2Library
#Resource  ../Externalkeywords/userkeywords.py

#nex tinme i will try something else
#Test Setup  Start browser  ${URL}  ${Browser}
#Test Teardown  Close Browser window


*** Variables ***
${Browser}  Chrome
${URL}  http://demoaviochem:demo2018@glamm.com/demo_aviochem/

*** Test Cases ***

First test case
    Start browser  ${URL}  ${Browser}
    #end of first case

*** keywords ***

Start browser
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    #Maximize browser window
    Enter Reach Manager
    Sleep  5
    #Enter Procurement
    Close Browser window


Close Browser window
    Close Browser

Enter Reach Manager
    Click Link  (//a)[1]
    Input Text  id:topsearch  hello Reach Manager part
    Click Element  xpath://*[contains(text(),"search")]

    Click Link  //*[@href="sinottico-prodotti.html"]
    Obsoleta in attesa validata tutte
    Click Link  //*[@href="sostanze.html"]
    Daleggere davalidare tutti
    Click Link  //*[@href="index_gennaro.html"]
    Daleggere davalidare tutti
    Click Link  //*[@href="aggiornamento-schede.html"]
    Daleggere davalidare tutti
    Click Link  //*[@href="fornitori.html"]
    Daleggere davalidare tutti
    Click Link  //*[@href="index_gennaro.html"]
    Daleggere davalidare tutti
    Input Text  id:icon_prefix  Aviochem
    Click Element  xpath://*[contains(text(),"cerca")]
    #sleep  10
    Click Element  class:dropdown-trigger
    sleep  4
    Click Element  id:dropdown1


Enter Procurement
    Click Link  (//a)[2]
    Input Text  id:topsearch  hello Procurement part
    Click Element  class:dropdown-trigger
    Click Element  id:dropdown1

Daleggere davalidare tutti
    Click Element  xpath://*[contains(text(),"Da leggere")]
    Click Element  xpath://*[contains(text(),"Da validare")]
    Click Element  xpath://*[contains(text(),"Tutte")]

Obsoleta in attesa validata tutte
    Click Element  xpath://*[contains(text(),"Obsoleta")]
    Click Element  xpath://*[contains(text(),"In attesa di validazione")]
    Click Element  xpath://*[contains(text(),"Validata")]
    Click Element  xpath://*[contains(text(),"Tutte")]
