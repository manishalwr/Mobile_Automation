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

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  1

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
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]

Select warranty type MLG
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval Filter"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]

Select date filter_1
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
          ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[2]/android.widget.Button    timeout=90
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
          ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.app.Dialog/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.Button    timeout=90
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

Search the details
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

Verify the Job card page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]   timeout=70
   AppiumLibrary.Element Should Contain Text    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]    JC19020578
   
Job card detail page

    AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Sleep    2
    
Go back
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="back-button"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="back-button"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC19020578 icon chip PENDING icon Dealer Details VARUN MOTORS PVT LTD over 4 years ago icon Creation Date 13/12/2019 icon Vehicle Reg No. TS13EP0489 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="back-button"]
    
Select the CCP from JC detail page
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval Filter"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]
    Sleep    2


Search the details for CCP
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]


Job card detail page for CCP
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC22002041 icon chip PENDING icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]     timeout=70
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC22002041 icon chip PENDING icon Dealer Details AKANKSHA AUTOMOBILES (RUDRAPUR) PVT LTD almost 2 years ago icon Creation Date 23/06/2022 icon Vehicle Reg No. TEMP907377 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Sleep    2

USe deifferent user
    Close Application
*** Test Cases ***
Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=70
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]  timeout=70
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    188603
    sleep  2

Enter Password_1
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

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

*** Test cases ***
Warranty tab_1
   sleep   2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
Select warranty type EWR_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]  timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]

Select date filter_4
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Custom"]   timeout=70
            Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.TextView[@text="Custom"]
     ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAY 2024"]   timeout=70
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
Select date filter_5
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR"]   timeout=70
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="MAR"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="1"]   timeout=70
               Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="1"]
        ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="MAR 2015"]   timeout=70
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
   sleep  2

*** Test cases ***
Select date filter_6
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="APR"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="APR"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="28"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="28"]
      ${check_element}=  Run Keyword and Return Status   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Done"]   timeout=70
         Run Keyword If      '${check_element}' == 'True'     AppiumLibrary.Click Element  xpath=//android.widget.Button[@text="Done"]
       sleep   2
Search the details_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

Job card detail page for EWR
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="JC20012647 icon chip PENDING icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8870 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING"]  timeout=70
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC20012647 icon chip PENDING icon Dealer Details DEWARS GARAGE LTD over 3 years ago icon Creation Date 29/12/2020 icon Vehicle Reg No. WB23E8870 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    sleep  2

   Close Application