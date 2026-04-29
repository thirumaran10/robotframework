### Radio button
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/AutomationPractice/
${browser}    chrome

*** Test Cases ***
Radio_button
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Select Radio Button    radioButton    radio2
    Select Radio Button    radioButton    radio1 
    
