*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open appium session
Test Teardown       Close appium session

*** Variable ***
${ROBOT_FRAMEWORK_CHECKBOX}     xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
${TECHS_CONTAINER}              id=io.qaninja.android.twp:id/rvContainer

*** Test Case ***
Cenario1: Selecionar o check de robot framework
    Go to checkbox
    Click Element                       ${ROBOT_FRAMEWORK_CHECKBOX}
    Wait Until Element Is Visible       ${TECHS_CONTAINER}
    Element Attribute Should Match      ${ROBOT_FRAMEWORK_CHECKBOX}      checked     true