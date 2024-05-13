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
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=150
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=150
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=150
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
Warranty tab
   sleep   2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=150
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=150
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]

Select warranty type MLG
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="MLG"]   timeout=150
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]

Select date filter_1
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=150
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=150
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]


Test number of hits_1
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_1
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_1
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
	    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=150
              Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***
Select date filter_2
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=150
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="15"]   timeout=150
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="15"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=150
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_2
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_2
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_2
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    timeout=150
              Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_3
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=150
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=150
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=150
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Search the details
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=150
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Job Card List"]   timeout=150
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.EditText   timeout=150
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Input Text Into Current Element    47
   Press Keycode    66
   Sleep    1
   AppiumLibrary.Element Text Should Be    xpath=//android.widget.TextView[@text="No Data Found !"]    No Data Found !
   Sleep    1
   AppiumLibrary.Click Element    xpath=//android.widget.EditText
   AppiumLibrary.Clear Text    xpath=//android.widget.EditText
   #AppiumLibrary.Input Value    xpath=//android.widget.EditText    JC19
   AppiumLibrary.Input Text Into Current Element    JC19
   Sleep    1
   Press Keycode    66
   Sleep    1
   AppiumLibrary.Element Should Contain Text    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]    JC19020578
   Sleep    1
   Close Application