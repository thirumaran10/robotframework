#login page using variable input password
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/loginpagePractise/
${browser}    chrome

*** Test Cases ***
using_Variable
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Input Text    id:username    rahulshettyacademy
    Input Password    id:password    learning
    Click Button    signInBtn
    Sleep    5s
    Close Browser
