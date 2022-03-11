*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${Browser}  Firefox
${url}      https://www.Kuvera.in/

*** Test Cases ***
testCase_01 Login into Kuvera website
                                Open the browser
                                Enter Login Details
                                click on login Button

*** Keywords ***
Open the browser
    Open Browser     ${url}    ${Browser}
    sleep   5

Enter Login Details
    click element   xpath://*[contains(text(),'Log in')]
    input text      xpath://*[@id='email']
    input text      xpath://*[@id='password']

click on login Button
    click element   xpath://*[@id='login-btn']
    sleep   3

Click on Profile
    click element   xpath://*[@class='caret-alignment']
    click element   xpath://*[@class='b-nav-dropdown__user__links__subtext close-nav-drop-down']
    sleep   5

Click on Logout Button
    click element   xpath://*[@class='b-nav-dropdown__user__links__subtext close-nav-drop-down']
    sleep   5