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
#Resource    Marruti_App_Warranty_Parts_Approval_Job_Card.robot

*** Test Cases ***
Launch App Test
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    420696
    sleep  4

Enter Password
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=70
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

*** Test Cases ***
Handle Login Prompt
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}  Handle Logout Prompt
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    Sleep    2
*** Test Cases ***

Verify channel dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

 Enter in the page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
Warrenty tab info
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]   timeout=70
   
Warranty Approvals Job Card
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]    timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Type"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="CCP"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]

job status
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   Press Keycode    4

Select date filter_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_1
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_1
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_1
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
	    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=70
        AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH1}
    END

*** Test cases ***
Select date filter_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="1"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]
   
Test number of hits_2
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_2
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_2
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button  timeout=50
		AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH2}
    END
*** Test cases ***
Select date filter_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="APR"]    timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="28"]     timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="28"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   sleep   2

Click on search

   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

Put JC on Hold
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC22002041 icon chip PENDING icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC22002041 icon chip PENDING icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval"]    timeout=70
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.widget.EditText    enter text
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.TextView   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.TextView
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Submit"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Put Job Card on-Hold?"]     timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Put Job Card On Hold"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card Submitted"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Back to home"]

Close App Test
  Close Application

Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    420696
    Sleep    6

Enter Password_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=70
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_1
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

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
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

 Enter in the page_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]

Warranty Approvals Job Card_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]    timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="CCP"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]

job status_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="HOLD"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="HOLD"]
   Press Keycode    4

Select date filter_4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAY 2024"]
Test number of hits_4
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_4
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_4
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
	    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=70
        AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH1}
    END

*** Test cases ***
Select date filter_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="15"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="15"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_5
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_5
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_5
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button  timeout=50
		AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH2}
    END
*** Test cases ***
Select date filter_6
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="APR"]    timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="28"]     timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="28"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   sleep   2

Search_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   sleep  2

Reject All Parts
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC22002041 icon chip HOLD icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC22002041 icon chip HOLD icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval"]   timeout=70
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Parts Approval"]  timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
    Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.widget.EditText    enter text
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Submit"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit"]
   sleep   4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Submitting Job Card"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit Job Card"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card Submitted"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Back to home"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Back to home"]

App close_1
  Close Application

Launch App Test_2
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    420696
    Sleep    6

Enter Password_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=70
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  2

*** Test Cases ***
Handle Login Prompt_2
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}  Handle Logout Prompt_2
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_2
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    Sleep    2
*** Test Cases ***

Verify channel dropdown option_2
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Enter in the page_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   Sleep    2
Warrenty tab info_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]

Warranty Approvals Job Card_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="CCP"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]

job status_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="REJECTED"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="REJECTED"]
   Press Keycode    4

Select date filter_7
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_7
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_7
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_7
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
	    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=70
        AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH1}
    END

*** Test cases ***
Select date filter_8
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="1"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_8
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_8
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_8
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button  timeout=50
		AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH2}
    END
*** Test cases ***
Select date filter_9
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="APR"]    timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="28"]     timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="28"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   sleep   2

Click on search_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]    timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC22002041 icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status REJECTED Parallel Claim Status PENDING"]   timeout=70
   sleep  2
Close app_2
   Close Application

Launch App Test_3
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    Sleep    6

Enter Password_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=70
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

*** Test Cases ***
Handle Login Prompt_3
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}  Handle Logout Prompt_3
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_3
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    Sleep    2
*** Test Cases ***

Verify homepage tabs_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   Sleep    2
Warrenty tab info_3
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]   timeout=70

Warranty Approvals Job Card_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="CCP"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]

job status_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="REJECTED"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="REJECTED"]
   Press Keycode    4


Select date filter_9
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAY 2024"]


Test number of hits_9
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_9
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_9
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
	    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=70
        AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH1}
    END

*** Test cases ***
Select date filter_10
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="15"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="15"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="MAR 2015"]


Test number of hits_2
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_10
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_10
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        AppiumLibrary.Wait Until Element Is Visible    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button  timeout=50
		AppiumLibrary.Click Element  xpath=${DIALOG_BUTTON_XPATH2}
    END
*** Test cases ***
Select date filter_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="APR"]    timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="APR"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="28"]     timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="28"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=50
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   sleep   2
Search_4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC22002041 icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status REJECTED"]   timeout=70

Close Application_3
  Close Application