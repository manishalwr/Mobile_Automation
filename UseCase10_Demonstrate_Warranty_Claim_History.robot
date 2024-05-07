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
Handle Login Prompt_1
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_1
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_1
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  4

*** Test cases ***
Warranty tab
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   Sleep    4
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   Sleep    4
Select warranty type MLG
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval Filter"]
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]

Select date filter

   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR 2024"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
   Sleep    2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="15"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
   sleep  2
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

Verify the Job card page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
   AppiumLibrary.Element Should Contain Text    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]    JC19020578

Job card detail page
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
    Swipe    791    1822    791    664
    Sleep    4
    Swipe    791    1822    791    664
    Sleep    4
    
Warranty Claim History page
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Claim History"]
    Sleep    4
    AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View
#    AppiumLibrary.Click Element    xpath=//android.view.View[@text="icons Vehicle History"]
#    Sleep    3
#    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.Button[@text="Vehicle Summary"]
#    Sleep    2
#    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Visit History (1)"]
#    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="JC19020578"]
#    Sleep    2
#    AppiumLibrary.Click Element    xpath=//android.view.View[@text="View Detail"]
#    Sleep    2

Use different user
   Close Application

*** Test Cases ***
Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    188603

Enter Password_1
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials_1
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  2

*** Test Cases ***
Handle Login Prompt_2
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_2
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_2
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  4

*** Test cases ***
Warranty tab_1
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   Sleep    4
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
   Sleep    4
Select warranty type EWR_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]

Select date filter_1

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
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="15"]
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

Search the details_1

   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   Sleep  4

Job card detail page for EWR
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC20012647 icon chip PENDING icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8870 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING"]
    Swipe    791    1822    791    664
    Sleep    4
    Swipe    791    1822    791    664
    Sleep    4


Vehicle History page_1
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Claim History"]
    Sleep    3
    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Claim History"]
    Sleep    2
