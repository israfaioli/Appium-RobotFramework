*** Settings ***
Resource                  ../resources/base.robot

Test Setup          Open appium session
Test Teardown       Close appium session

*** Variable ***

*** Test Case ***
Cenario1: Deve mover o homem aranha para o topo da lista
    Go to avengers list
    Drag And Drop   io.qaninja.android.twp:id/drag_handle        4       0
    Sleep                   5

*** Keywords ***