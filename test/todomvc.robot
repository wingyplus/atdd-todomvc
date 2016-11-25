*** Settings ***
Library    Selenium2Library

*** Variables ***
${KEY_ENTER}    \\13

*** Test Cases ***
เพิ่ม Todo เข้าไปใน List
    [Setup]    Open Browser    http://todomvc.com/examples/polymer/index.html    browser=gc    remote_url=http://138.197.15.92:4444/wd/hub
    พิมพ์ Learn AngularJs
    กด Enter
    ผู้ใช้จะเห็น Learn AngularJs อยู่ใน List
    [Teardown]    Close Browser

*** Keywords ***
พิมพ์ Learn AngularJs
    Wait Until Keyword Succeeds    10    1    Input Text    id=new-todo    Learn AngularJs

กด Enter
    Press Key    id=new-todo    ${KEY_ENTER}

ผู้ใช้จะเห็น Learn AngularJs อยู่ใน List
    Wait Until Element Contains    css=#todo-list > li > div > label    Learn AngularJs
