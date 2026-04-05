*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
tablevalidation
     Open Browser    ${url}    ${browser}
     Maximize Browser Window
     Sleep    5s
     Set Selenium Speed    5s
     Scroll Element Into View    //h2[text()='Dynamic Web Table']/parent::div
     ${row}    Get Element Count    //table[@name="BookTable"]/tbody/tr
     ${column}    Get Element Count    //table[@name="BookTable"]/tbody/tr[1]/th
     Log To Console    ${row}
     Log To Console    ${column}
     ${data}    Get Text    //table[@name="BookTable"]/tbody/tr[1]/th[2]
     Log To Console    ${data}
     Table Column Should Contain    //table[@name="BookTable"]    2    ${data}
