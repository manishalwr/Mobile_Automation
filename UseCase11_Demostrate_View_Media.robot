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

Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=20
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=20
    AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text Into Current Element    184110
    Sleep   6

Enter Password_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  timeout=20
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  Maruti1234

Submit Credentials_1
    #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]
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
    #AppiumLibrary.Wait Until Page Contains Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  3

*** Test Cases ***
Verify channel dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]  timeout=20
   #AppiumLibrary.Wait Until Element Is Visible    xpath=/android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=10
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]  timeout=20
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Enter in the page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]  timeout=20
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   
Warrenty tab info_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
#   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]  timeout=10
#   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[1]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@content-desc="Job Card Status Job Card Status Status of the Job cards"]

Warranty Approvals Job Card_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]  timeout=70
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Approvals Job Card Check & Approve"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Workshop Name"]   timeout=70
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="MLG"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]

job status
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=20
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="10th Free Service"]  timeout=20
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="10th Free Service"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View  timeout=20
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="PENDING"]   timeout=20
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="PENDING"]
   Press Keycode    4

date filter_1
  AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]    timeout=20
  AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="MAY 2024"]    timeout=20
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

Click on search_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Search"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Search"]

Click on the view media
   AppiumLibrary.Wait Until Page Contains Element    xpath=//android.view.View[@text="JC24000167 icon chip PENDING icon Dealer Details CARS INDIA PVT. LTD. 29 days ago icon Creation Date 08/04/2024 icon Vehicle Reg No. WB08G9614 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]   timeout=70
  # AppiumLibrary.Wait Until Page Contains    "JC24000167 icon chip PENDING icon Dealer Details CARS INDIA PVT. LTD. 23 days ago icon Creation Date 08/04/2024 icon Vehicle Reg No. WB08G9614 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="JC24000167 icon chip PENDING icon Dealer Details CARS INDIA PVT. LTD. 29 days ago icon Creation Date 08/04/2024 icon Vehicle Reg No. WB08G9614 icon Channel Arena icon Service Type No Data Available Individual Claim Status PENDING Parallel Claim Status"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Warranty Approval"]   timeout=70
   Swipe    932    1533    817    582
   Swipe    932    1533    817    582
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Media"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="icons Media Files icons"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="View Media"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[6]/android.view.View[2]/android.widget.Image   timeout=20
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[6]/android.view.View[2]/android.widget.Image
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="video"]   timeout=70
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="play"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="play"]
   sleep  2
   Close Application



