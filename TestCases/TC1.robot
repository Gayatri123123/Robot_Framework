*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/Keywords.robot

Test Setup    Open Browser    ${url}    ${browser}
Test Teardown    Close Browser




*** Test Cases ***

LoginTest
    [Documentation]     Basic info
    Launch web App
    login To Application
    close Browser



