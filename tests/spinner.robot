*** Settings ***
Resource                  ../resources/base.robot

Test Setup          Open appium session
Test Teardown       Close appium session

*** Variable ***
${PROFILE_SPINNER}           id=io.qaninja.android.twp:id/spinnerJob
${PROFILE_LIST_VIEW}         class=android.widget.ListView
${SELECTED_PROFILE}          id=android:id/text1

*** Test Case ***
Cenario1: Deve selecionar um perfil no formulario de cadastro
    Go to signup form
    Select type profile  QA


*** Keywords ***
Select type profile
    [Arguments]     ${TYPE_PROFILE}
    CLick Element                       ${PROFILE_SPINNER}
    Wait Until Element Is Visible       ${PROFILE_LIST_VIEW}
    Click Text                          ${TYPE_PROFILE}
    Element Attribute Should Match      ${SELECTED_PROFILE}      text     ${TYPE_PROFILE}