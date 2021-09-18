*** Settings ***
Resource                  ../resources/base.robot

Test Setup        Open appium session
Test Teardown     Close appium session 

*** Variable ***
${EMAIL_INPUT}           id=io.qaninja.android.twp:id/etEmail
${EMAIL_PASSWORD}        id=io.qaninja.android.twp:id/etPassword
${SUBMIT_BUTTON}         id=io.qaninja.android.twp:id/btnSubmit

*** Test Case ***
Cenario 1: login com sucesso
    Go to login formu
    Input Text                      ${EMAIL_INPUT}         eu@papito.io
    Input Text                      ${EMAIL_PASSWORD}      qaninja
    Click Element                   ${SUBMIT_BUTTON}
    Wait Until Page Contains        Show! Suas credenciais são validas.   


*** Keywords ***
