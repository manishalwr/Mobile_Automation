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
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    sleep  4

Enter Password
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=90
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

Verify homepage tabs
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
Warrenty tab info
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]   timeout=90

Warranty Approvals Job Card
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]    timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]    timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Type"]     timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]    timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]

job status
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   #Press Keycode    4

Select date filter_1
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_1
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_1
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_1
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***
Select date filter_2
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="15"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="15"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_2
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_2
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_2
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    timeout=90
              Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_3
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Click on search
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

No Data Found
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]    timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="No Data Found !"]  timeout=90
   Sleep    2

Close App Test
  Close Application

Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]    timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    188603
    sleep  4

Enter Password_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]    timeout=90
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

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=90
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   Sleep    2
Warrenty tab info_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]   timeout=90

Warranty Approvals Job Card_1
    AppiumLibrary.Wait Until Element Is Visible   xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]   timeout=90
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Type"]   timeout=90
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]

job status_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   Press Keycode    4

Select date filter_3
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=90
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=90
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_3
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_3
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_3
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=90
              Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***
Select date filter_4
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="15"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="15"]
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]
   
Test number of hits_4
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_4
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_4
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    timeout=90
                 Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_5
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Click on search_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]    timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

2 part approve 2 parts reject
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC20012647 icon chip PENDING icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8890 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval"]   timeout=90
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Parts Approval"]   timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=(//android.widget.TextView[@text="Approve"])[1]
   AppiumLibrary.Click Element    xpath=(//android.widget.TextView[@text="Approve"])[1]
   AppiumLibrary.Wait Until Element Is Visible    xpath=(//android.widget.TextView[@text="Approve"])[1]  timeout=90
   AppiumLibrary.Click Element    xpath=(//android.widget.TextView[@text="Approve"])[1]
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582

   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.widget.EditText    enter text
   Press Keycode    4
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit"]
   sleep   4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Submitting Job Card"]
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit Job Card"]

Close Application
   Close Application

Launch App Test_2
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]    timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]


Enter Username_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    sleep  4

Enter Password_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

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

Verify homepage tabs_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]

Warrenty tab info_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]   timeout=90

Warranty Approvals Job Card_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]   timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Type"]    timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]


job status_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   Press Keycode    4
Test search_new
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=90
                Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=90
                Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_5
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_5
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_5
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***
Select date filter_6
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="15"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="15"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]


Test number of hits_7
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_6
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_6
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_8
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=90
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Click on search_3

   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]


1 part approve 1 parts reject
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC20012647 icon chip PENDING icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8890 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval"]   timeout=90
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Parts Approval"]   timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=(//android.widget.TextView[@text="Approve"])[1]   timeout=90
   AppiumLibrary.Click Element    xpath=(//android.widget.TextView[@text="Approve"])[1]
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Reject"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   #AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   #sleep  2
   #AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Reject"]
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText  timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text    xpath=//android.widget.EditText    enter text
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Submit"]  timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Submitting Job Card"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Submit Job Card"]
Close Application_2
   Close Application

Launch App Test_3
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    sleep  4

Enter Password_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]    timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

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
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]

Warrenty tab info_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]   timeout=90

Warranty Approvals Job Card_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]   timeout=90
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Type"]   timeout=90
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]

job status_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="10th Free Service"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="APPROVED"]
   Press Keycode    4


Select date filter_7
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=90
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]
###   Swipe    850    1682    850    884
Test number of hits_1
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_7
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_7
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=90
                Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END
*** Test cases ***
Select date filter_8
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="15"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="15"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_8
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_8
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_8
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_4
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=90
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Click on search_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

All Approved
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=90
   #AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC20012647 icon chip APPROVED icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8890 icon Channel Arena icon Service Type No Data Available Individual Claim Status APPROVED"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=(//android.view.View[@text="JC20012647 icon chip APPROVED icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8890 icon Channel Arena icon Service Type No Data Available Individual Claim Status APPROVED"])[1]   timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=(//android.view.View[@text="JC20012647 icon chip APPROVED icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8890 icon Channel Arena icon Service Type No Data Available Individual Claim Status APPROVED"])[2]   timeout=90
   sleep  2
   Close Application