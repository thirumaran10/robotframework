*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/AutomationPractice/
${browser}    chrome

*** Test Cases ***
Scrolling
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Set Selenium Speed    3s
    #Execute Javascript    window.scrollTo(1,2000)
    Scroll Element Into View    //button[@id="mousehover"]
    
    Go To    https://testautomationpractice.blogspot.com/
    #To scroll down
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    #To scroll up
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Close All Browsers
