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
    AppiumLibrary.Input Text Into Current Element    420696

Enter Password
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText    timeout=70
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
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
*** Test Cases ***

Verify channel dropdown option
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

 Enter in the page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]

Warranty Approvals Job Card

     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
         AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval Filter"]   timeout=70
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText
         sleep  2
         AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText    SF02 - AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="SF02 - AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="SF02 - AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD"]
        AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Outlet Code"]   timeout=70
        AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
        AppiumLibrary.Click Element    xpath=//android.view.View[@text="01"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="CCP"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="CCP"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="10th Free Service"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="10th Free Service"]

job status
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   Press Keycode    4

date filter_1

    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]
Test number of hits_1
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_1
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_1
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    70s
              Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***
Select date filter_2

     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="1"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="1"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_2
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_2
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_2
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    70s
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_3

   ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=70
        Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
   ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=70
        Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
   ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=70
        Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Search
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

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
    Sleep    2

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
    AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]

*** Test Cases ***
Verify channel dropdown option_1
   Sleep    2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Enter in the page_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]  timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]


Warranty Approvals Job Card_1

    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
       AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval Filter"]   timeout=70
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText
          sleep   2
        AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.EditText    4603 - VARUN MOTORS PVT LTD
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="4603 - VARUN MOTORS PVT LTD"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="4603 - VARUN MOTORS PVT LTD"]
        AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Outlet Code"]   timeout=70
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="0A"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="0A"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="MLG"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="MLG"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="10th Free Service"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="10th Free Service"]

job status_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   Press Keycode    4


date filter_4
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_4
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_4
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_4
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    70s
                 Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***
Select date filter_5

     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="1"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="1"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_5
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_5
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_5
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    70s
                 Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END
*** Test cases ***
Select date filter_6

    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
   sleep   2

Search_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

Close App Test_1
   Close Application

*** Test Cases ***
Launch App Test_2
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    188603
    Sleep    2

Enter Password_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText    timeout=70
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
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
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
*** Test Cases ***

Verify homepage tabs_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]

Warranty Approvals Job Card_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]

job status_2
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="EWR"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="EWR"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="10th Free Service"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View  timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]


date filter_6

    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_6
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_6
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_6
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    70s
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***

Select date filter_7
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="1"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="1"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_7
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_7
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_7
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    70s
                 Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END

*** Test cases ***

Select date filter_8

       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=70
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=70
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=70
                Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]

Search_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

Close App Test_2
   Close Application

*** Test Cases ***
Launch App Test_3
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    Sleep    2

Enter Password_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText    timeout=70
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
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
*** Test Cases ***

Verify homepage tabs_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]

Warranty Approvals Job Card_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]

job status_3
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="EWR"]   timeout=70
           Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="EWR"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="10th Free Service"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.view.View[@text="10th Free Service"]
         AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=70
         AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
         AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="APPROVED"]   timeout=70
         AppiumLibrary.Click Element    xpath=//android.view.View[@text="APPROVED"]


date filter_8

     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
             Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAY 2024"]

Test number of hits_8
 # Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_8
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_8
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
         ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    70s
                Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button
    END

*** Test cases ***

Select date filter_9
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="1"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="1"]
    ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
          Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR 2015"]

Test number of hits_10
# Open the app or perform any setup steps needed
# Click the dialog button for a specific number of times
    Click_Dialog_Button_For_Specific_Number_Of_Times_10
*** Keywords ***
Click_Dialog_Button_For_Specific_Number_Of_Times_10
    FOR  ${index}  IN RANGE  ${MAX_CLICKS}
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    70s
                 Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button
    END

*** Test cases ***

Select date filter_3

       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=70
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=70
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
       ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=70
                Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
Search_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]
Close App Test_3
   Close Application

