#x-path
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***
xpath
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    10s
    #To observe the preocess
    Set Selenium Speed    5s  
    #locating following element
    Input Text    //input[@name="username"]/parent::div/parent::div/child::div/following::div[1]/child::input    Admin
    #locating preceding, following + sibiling
    Input Password    //input[@placeholder="Password"]/parent::div/preceding::div[1]/following-sibling::div/child::input    admin123
    #locating preceding + sibiling
    Click Button    //button[text()=' Login ']/following::div/preceding-sibling::div/child::button
    Sleep    5s
    Close Browser

