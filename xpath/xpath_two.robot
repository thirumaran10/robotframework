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
    Sleep    5s
    
    #locating following element
    Input Text    //input[@name="username"]/parent::div/parent::div/child::div/following::div[1]/child::input    Admin
    #locating preceding, following + sibiling
    Input Password    //input[@placeholder="Password"]/parent::div/preceding::div[1]/following-sibling::div/child::input    admin123
    Click Button    //button[text()=' Login ']/following::div/preceding-sibling::div/child::button
    Close Browser

