*** Settings ***
Library    SeleniumLibrary
Library    DataDriver   ../data/login.csv
Resource    ../Resources/login.robot
Test Template    InValid Login

Suite Setup    open nopcommerce website
Suite Teardown    close bowser

*** Test Cases ***
Invalid login using ${username} and ${pass}

*** Keywords ***
InValid Login
    [Arguments]    ${username}  ${pass}
    click on login link
    enter email     ${username}
    enter password  ${pass}
    click on login button
    check if page contains error message
