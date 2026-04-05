*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/ 
${browser}    chrome

*** Test Cases ***
tabbedwindow
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Set Selenium Speed    3s
    Click Element    //*[text()='New Tab']
    Switch Window    SDET-QA Blog
    Input Text    //input[@type="text"]    "abc"
    Press Key    //input[@type="submit"]    ENTER
       
    
