*** Settings ***
Library    appium
Library    OperatingSystem
#Library    appium    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library    Telnet


*** Variables ***
#${REMOTE_URL}     http://192.168.1.100:4723/wd/hub
#${PLATFORM_NAME}  13
#${DEVICE_NAME}    0L02410R200030D8
#${APP_PACKAGE}    com.dwellinai.dwellin
#${APP_ACTIVITY}   com.dwellinai.dwellin.MainActivity
#${APP}            C:\\Users\\manis\\Desktop\\APPIUM\\QA-1-0-702\\app-release.apk


*** Test Cases ***
Launch App Test
     Open Connection    http://localhost:4723/wd/hub   platformName=Android    deviceName=0L02410R200030D8   app=C://Users//manis//Desktop//APPIUM//QA-1-0-702   appActivity=com.dwellinai.dwellin.MainAcivity   ignorHiddenApiPolicyError=true