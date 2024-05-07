*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Library    Process
Library    AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library    Telnet
Library    Collections
Library    SeleniumLibrary
Library    Dialogs
Library    DateTime


Variables    C:\\Users\\manis\\PycharmProjects\\pythonProject2\\Variable.py


*** Test Cases ***

Launch App Test
    Open Application    ${REMOTE_URL}    app=${APP}    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
    ${start_time}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

    ${end_time}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    ${loading_time}=    Evaluate    datetime.datetime.strptime('${end_time}', '%Y-%m-%d %H:%M:%S') - datetime.datetime.strptime('${start_time}', '%Y-%m-%d %H:%M:%S')

    ${hours}=    Evaluate    int(${loading_time.total_seconds()} / 3600)
    ${minutes}=    Evaluate    int((${loading_time.total_seconds()} % 3600) / 60)
    ${seconds}=    Evaluate    int(${loading_time.total_seconds()} % 60)

    Log        Launch time:  ${hours} hours, ${minutes} minutes, ${seconds} seconds
    #Log    Launch time:${hours}

Enter Username
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText

    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials

    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  2

*** Test Cases ***
Handle Login Prompt_1
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_1
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_1
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    ${start_time1}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S

    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  4
    ${end_time1}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    ${loading_time1}=    Evaluate    datetime.datetime.strptime('${end_time1}', '%Y-%m-%d %H:%M:%S') - datetime.datetime.strptime('${start_time1}', '%Y-%m-%d %H:%M:%S')

    ${hours}=    Evaluate    int(${loading_time1.total_seconds()} / 3600)
    ${minutes}=    Evaluate    int((${loading_time1.total_seconds()} % 3600) / 60)
    ${seconds}=    Evaluate    int(${loading_time1.total_seconds()} % 60)

    Log        Launch time homescreen:  ${hours} hours, ${minutes} minutes, ${seconds} seconds

Warranty tab time load
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   Sleep    4
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   Sleep    4


