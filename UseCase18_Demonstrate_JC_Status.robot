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
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]    timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    sleep  6

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

*** Test Cases ***
Handle Login Prompt_1
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_1
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_1
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]

*** Test cases ***

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
 
Warrenty tab info_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
#   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@content-desc="Job Card Status Job Card Status Status of the Job cards"]

Open JC Status page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Job Card Status Job Card Status Status of the Job cards"]/android.view.View[3]/android.widget.Image   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@content-desc="Job Card Status Job Card Status Status of the Job cards"]/android.view.View[3]/android.widget.Image
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card Status Search"]    timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.widget.EditText    WB23E8870
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="JC20012647"]    timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="MLG"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.widget.EditText    TS13EP0489
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="JC19020578"]   timeout=70
   sleep  2

close application
   Close Application
 