*** Settings ***
Documentation       aqui teremos as keywords helpers

*** Variable ***
${START}                        COMEÇAR
${BOTAO_MENU}                   xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

*** Keywords ***

Get started
    Wait Until Page Contains        ${START}
    Click Text                      ${START}

Open navigation menu
    Wait Until Element Is Visible            ${BOTAO_MENU}
    Click Element                            ${BOTAO_MENU}
    Wait Until Page Contains                 DIALOGS

Go to login formu
    Open navigation menu
    Click Text                      FORMS
    Wait Until Page Contains        FORMS
    Click Text                      LOGIN
    Wait Until Page Contains        Fala QA, vamos testar o login?    

Go to radio buttons
    Open navigation menu
    Click Text                      INPUTS
    Wait Until Page Contains        BOTÕES DE RADIO
    Click Text                      BOTÕES DE RADIO 
    Wait Until Page Contains        Escolha sua linguagem preferida        

Go to checkbox   
    Open navigation menu
    Click Text                      INPUTS
    Wait Until Page Contains        CHECKBOX
    Click Text                      CHECKBOX 
    Wait Until Page Contains        Marque as techs que usam Appium

Go to short click
    Open navigation menu
    Click Text                      BOTÕES   
    Wait Until Page Contains        CLIQUE SIMPLES
    Click Text                      CLIQUE SIMPLES 
    Wait Until Page Contains        Botão clique simples 

Go to long click
    Open navigation menu
    Click Text                      BOTÕES   
    Wait Until Page Contains        CLIQUE LONGO
    Click Text                      CLIQUE LONGO 
    Wait Until Page Contains        Botão clique longo     

Go to signup form
    Open navigation menu
    Click Text                      FORMS
    Wait Until Page Contains        FORMS
    Click Text                      CADASTRO
    Wait Until Page Contains        Bem-vindo, crie sua conta.    

Go to avengers list
    Open navigation menu
    Click Text                      AVENGERS
    Wait Until Page Contains        AVENGERS
    Click Text                      LISTA
    Wait Until Page Contains        LISTA            