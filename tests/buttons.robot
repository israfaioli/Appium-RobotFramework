*** Settings ***
Resource                  ../resources/base.robot

Test Setup          Open appium session
Test Teardown       Close appium session

*** Variable ***
${SHORT_CLICK_BUTTON}        id=io.qaninja.android.twp:id/short_click
${LONG_CLICK_BUTTON}         id=io.qaninja.android.twp:id/long_click

*** Test Case ***
Cenario1: Realizar clique simples
    Go to short click
    Click Element                   ${SHORT_CLICK_BUTTON}
    Wait Until Page Contains        Isso é um clique simples

Cenario2: Realizar clique longo
    Go to long click
    Long Press                      ${LONG_CLICK_BUTTON}        2000
    Wait Until Page Contains        CLIQUE LONGO OK