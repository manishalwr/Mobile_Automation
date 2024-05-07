*** Settings ***
Library    AppiumLibrary
Library    OperatingSystem
Library    Process
Library    AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library    Telnet
Library    Collections
Library    SeleniumLibrary
Library    Dialogs

Variables    C:\\Users\\manis\\PycharmProjects\\pythonProject2\\Variable.py


*** Test Cases ***
Launch App Test
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

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
Handle Login Prompt
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  4

*** Test cases ***
Warranty tab
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]

Select warranty type CCP
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="CCP"]
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]

Select date filter

   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR 2024"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   Sleep    2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="10"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="22"]
   Sleep    2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   sleep   4

Search the details

   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

