*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/loginpagePractise/
${browser}    chrome

*** Test Cases ***
waits in seleninm
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    5s
    # Set Selenium Speed    5s
    # Set Selenium Timeout    30s
    Set Selenium Implicit Wait    10s
    Input Text    //input[@name="username"]    rahulshettyacademy
    Input Password    //input[@name="password"]    learning
    Click Button    //input[@id="signInBtn"]



#three command in waits    
    # Set Selenium Speed    5s
    # Set Selenium Timeout    30s
    # Set Selenium Implicit Wait    10s
