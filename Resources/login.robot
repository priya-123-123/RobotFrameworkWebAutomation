*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
${login}    //a[contains(text(),'Log in')]
${email}    //input[@id='Email']
${password}     //input[@id='Password']
${loginbutton}  //button[contains(text(),'Log in')]
${heading}  //h2[contains(text(),'Welcome to our store')]
${logout}   //a[contains(text(),'Log out')]
*** Keywords ***
open nopcommerce website
    open browser    ${url}  ${browser}
click on login link
    click element    ${login}
Enter email
    [Arguments]    ${username}
    input text    ${email}  ${username}
Enter password
    [Arguments]     ${pass}
    input text    ${password}   ${pass}
click on login button
    click button    ${loginbutton}
#check if page contains My account
    #page should contain    My account

check if page contains error message
    page should contain    Login was unsuccessful
click on logout button
    click element    ${logout}
close bowser
    close all browsers


