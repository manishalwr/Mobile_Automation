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
    AppiumLibrary.Input Text Into Current Element    173061
    sleep  3

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    
Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

*** Test Cases ***
Handle Login Prompt
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]     timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    
*** Test Cases ***

Verify channel dropdown option
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Verify Zone dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]  timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View    timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST"]   timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="EAST"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="EAST"]

Verify region dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST 1"]    timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="EAST 1"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="EAST 1"]

 Enter in the page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Warranty Warranty Parts Approval & More"]/android.view.View[1]   timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@content-desc="Warranty Warranty Parts Approval & More"]/android.view.View[1]

Warrenty tab info
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
#   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@content-desc="Job Card Status Job Card Status Status of the Job cards"]

Warranty Approvals Reports
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.RadioButton[@text="Monthly"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.RadioButton[@text="Monthly"]

#Select the report type
#   AppiumLibrary
#   AppiumLibrary.Click Element    xpath=//android.widget.RadioButton[@text="Monthly"]
#   
Select custom cal
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
  AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]    timeout=70
  AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAY 2024"]
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="APR"]   timeout=70
  AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="1"]  timeout=70
  AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="1"]
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="26"]   timeout=70
  AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="26"]
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=70
  AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]

Select zone
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="EAST"]

Select Region
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View    timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST 1"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="EAST 1"]

Select workshop code/name
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.widget.EditText   DEWARS
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="0605 - DEWARS GARAGE LTD"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="0605 - DEWARS GARAGE LTD"]
   Press Keycode    4
   Swipe    850    1682    850    884
   

Select outlet code
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="01"]  timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="01"]
   Press Keycode    4

Enter email to
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[6]/android.view.View/android.view.View/android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[6]/android.view.View/android.view.View/android.widget.EditText
   AppiumLibrary.Input Text Into Current Element    eminds_mbansal@maruti.co.in
   #Swipe    932    1533    817    582
   Press Keycode    4

Email CC
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[7]/android.view.View/android.view.View/android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[7]/android.view.View/android.view.View/android.widget.EditText
   #AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.widget.EditText   eminds_mbansal@maruti.co.in
   AppiumLibrary.Input Text Into Current Element    eminds_mbansal@maruti.co.in


Send reports
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Send Report"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Send Report"]

Send Done
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Report Sent Successfully!"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]

Close Application
    Close Application
