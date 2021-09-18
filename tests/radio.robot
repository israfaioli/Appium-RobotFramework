*** Settings ***
Resource                  ../resources/base.robot

Test Setup        Open appium session
Test Teardown     Close appium session 

*** Test Case ***
Cenario1: selecionando python como linguagm preferida
    Go to radio buttons

    ${ELEMENT}=      Set Variable        xpath=//android.widget.RadioButton[contains(@text, 'Python')]
    Click Element                        ${ELEMENT}
    Wait Until Element Is Visible        ${ELEMENT}
    Element Attribute Should Match       ${ELEMENT}      checked     true
