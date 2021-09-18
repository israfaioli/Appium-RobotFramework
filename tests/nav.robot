*** Settings ***
Resource                  ../resources/base.robot

Test Setup        Open appium session
Test Teardown     Close appium session 

*** Variable ***
${TOOLBAR_TITLE}        id=io.qaninja.android.twp:id/toolbarTitle

*** Test Case ***
Cenario1: Deve acessar a tela dialogs
    Open navigation menu
    click Text      DIALOGS
    Wait Until Element Is Visible           ${BOTAO_MENU}
    Wait Until Element Is Visible           ${TOOLBAR_TITLE}
    Element Text Should Be                  ${TOOLBAR_TITLE}        DIALOGS


Cenario2: Deve acessar a tela formulario
    Open navigation menu
    Wait Until Page Contains        FORMS 
    click Text      FORMS
    Wait Until Element Is Visible            ${BOTAO_MENU}
    Wait Until Element Is Visible            ${TOOLBAR_TITLE}
    Element Text Should Be                   ${TOOLBAR_TITLE}        FORMS

Cenario3: Deve acessar a tela avengers
    Open navigation menu
    Wait Until Page Contains        AVENGERS 
    click Text      AVENGERS
    Wait Until Element Is Visible           ${BOTAO_MENU}
    Wait Until Element Is Visible           ${TOOLBAR_TITLE}
    Element Text Should Be                  ${TOOLBAR_TITLE}        AVENGERS    