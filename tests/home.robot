*** Settings ***
Library         AppiumLibrary

*** Test Case ***
Cenario1: Deve abrir a tela principal
    Set Appium Timeout      5
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk
    ...                     udid=emulator-5554

    Wait Until Page Contains        Training Wheels Protocol
    Wait Until Page Contains        Mobile Version
    Close Application