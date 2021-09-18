*** Settings ***
Resource                  ../resources/base.robot

Test Setup          Open appium session
Test Teardown       Close appium session

*** Variable ***
${START_X}      18.22 
${START_Y}      88.88
${END_X}        47.22
${END_Y}        18.22
${DURATION}
${REMOVE_BUTTON}        id=io.qaninja.android.twp:id/btnRemove

*** Test Case ***
Cenario1: Deve remover o capitao america
    Go to avengers list
    Swipe By Percent        ${START_Y}      ${START_X}      ${END_X}      ${END_Y}
    Wait Until Element Is Visible       ${REMOVE_BUTTON}
    Click Element                       ${REMOVE_BUTTON}


*** Keywords ***