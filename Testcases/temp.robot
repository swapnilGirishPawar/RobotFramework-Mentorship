*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${url}      https://www.google.com/
*** Test Cases ***
TempTestCase
    Open Browser     ${url}    ${Browser}
    Sleep   5
    close all browsers

*** Keywords ***


