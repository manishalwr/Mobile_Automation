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

Resource    Marruti_App_Warranty_Parts_Approval_Job_Card.robot

*** Test Cases ***

Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
      AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
      AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
      Sleep    2

Enter Username_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}

    Press Keycode    9
    Press Keycode    8
    Press Keycode    11
    Press Keycode    9
    Press Keycode    11
    Press Keycode    15
    Sleep    2

Enter Password_1
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText

    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials_1

    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  2

*** Test Cases ***
Handle Login Prompt_1
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}  Handle Logout Prompt_1
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_1
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    Sleep    2
*** Test Cases ***

Verify channel dropdown option_1
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   Sleep    2
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NEXA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

 Enter in the page_1
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   Sleep    2
Warrenty tab info_1
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   Sleep    2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@content-desc="Job Card Status Job Card Status Status of the Job cards"]

#Warranty Approvals Job Card_1

#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
#   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]
#   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText
#   sleep  10
#   AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText    SF02
#  # AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SF02 - AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD"]
#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="SF02 - AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD"]
#   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Outlet Code"]
#   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="01"]
#   Sleep  2
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Type"]
   #AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]
#   Swipe    850    1682    850    884
#   Sleep    2
#   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]

   Sleep    2
#job status_1
#   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View
#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]

date filter_1
#   Swipe    850    1682    850    884

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
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

   #AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.TextView

   #AppiumLibrary.Click Button    Search

   #AppiumLibrary.Click Element At Coordinates    552    2085
   #AppiumLibrary.Wait Until Element Is Visible    xpath=xpath=//android.view.View[@text="Search"]/android.view.View
   #AppiumLibrary.Click Element    xpath=//android.view.View[@text="Search"]/android.view.View
   #AppiumLibrary.Click Element    xpath=//android.view.View[@text="Search"]/android.view.View
   #AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   #Swipe    850    1682    850    884
   #AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

   #AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]


