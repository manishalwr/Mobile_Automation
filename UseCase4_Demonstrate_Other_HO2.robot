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

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText

    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  Maruti@123
    Sleep    2
Enter Username
    #AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}


    Press Keycode    9
    #Sleep    2
    Press Keycode    7
    #Sleep    2
    Press Keycode    10
    #Sleep    2
    Press Keycode    11
    #Sleep    2
    Press Keycode    7
    #Sleep    2
    Press Keycode    15
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
*** Test Cases ***

Verify channel dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   Sleep    4
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NEXA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]
Verify Zone dropdown option
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   Sleep    4
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]

Verify region dropdown option
   Sleep    2
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   Sleep    2
   Press Keycode    4
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ListView[@text="Options list"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 1"]
   Sleep    2
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 2"]
   Sleep    2
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 3"]
   Sleep    2
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 4"]
   Sleep    2
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 5"]
   Sleep    2
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH 2"]
   Sleep    2

 Enter in the page
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]


Verify homepage tabs
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   Sleep    2
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Others Banner Notifications"]
