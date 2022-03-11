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
     close browser

*** Keywords ***
Open the browser
    Open Browser     ${url}    ${Browser}
    sleep   5

Enter Login Details
    click element   xpath://*[contains(text(),'Log in')]
    input text      xpath://*[@id='email']              pswapnil032@gmail.com
    input text      xpath://*[@id='password']           Swapnil@123

click on login Button
    click element   xpath://*[@id='login-btn']
    sleep   3
