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
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
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
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  2
*** Test cases ***
Warranty tab
   sleep   5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]

Select warranty type MLG
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="MLG"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]

Select date filter
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAY 2024"]
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR"]  timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="15"]  timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="15"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="APR"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="29"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="29"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   sleep   2

Search the details
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text Into Current Element    47
   Press Keycode    66
   Sleep    4
   AppiumLibrary.Element Text Should Be    xpath=//android.widget.TextView[@text="No Data Found !"]    No Data Found !
   Sleep    4
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Clear Text    xpath=//android.widget.EditText
   #AppiumLibrary.Input Value    xpath=//android.widget.EditText    JC19
   AppiumLibrary.Input Text Into Current Element    JC19
   Sleep    2
   Press Keycode    66
   Sleep    4
   AppiumLibrary.Element Should Contain Text    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]    JC19020578
   Sleep    4
   Close Application