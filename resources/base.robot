*** Settings ***
Library             AppiumLibrary
Library             libs/extend.py
Resource            helpers.robot

*** Variable ***
${APPIUM_URL}                   http://localhost:4723/wd/hub
${APPIUM_AUTOMATION_NAME}       UiAutomator2
${APPIUM_PLATFORM_NAME}         Android
${APPIUM_DEVICE_NAME}           Emulator
${APPIUM_APP}                   ${EXECDIR}/app/twp.apk
${APPIUM_UDID}                  emulator-5554

*** Keywords ***
Open appium session
    Set Appium Timeout      5
    Open Application        ${APPIUM_URL}
    ...                     automationName=${APPIUM_AUTOMATION_NAME}
    ...                     platformName=${APPIUM_PLATFORM_NAME}
    ...                     deviceName=${APPIUM_DEVICE_NAME}
    ...                     app=${APPIUM_APP}
    ...                     udid=${APPIUM_UDID}

    Get started

Close appium session   
    Capture Page Screenshot
    Close Application  

