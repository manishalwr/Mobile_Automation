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
    AppiumLibrary.Input Text Into Current Element    214248

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
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  2

*** Test cases ***
Verify the bell icon
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Homepage"]/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.widget.Image[2]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.view.View[@text="Homepage"]/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.widget.Image[2]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="All Types"]   timeout=70

Verify the JC Alerts 
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="JC Alerts"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="JC Alerts"]
    Sleep    2

Apply the filter
        
    #Select CCP warranty type
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="CCP"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="CCP"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822

    #Select EWR warranty type
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="EWR"]
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="EWR"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822
    #Select MLG warranty type
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="MLG"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="MLG"]

    #Select all
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="All Types"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="All Types"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822

Select Banner Notification
    #For last 90 days
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Last 90 days"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Last 90 days"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822

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
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="JAN"]    timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="JAN"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="1"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="JAN 2015"]   timeout=70
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="JAN 2015"]


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
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822
    #For last 30 days
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Last 30 days"]   timeout=70
    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Last 30 days"]
    Swipe    791    1822    791    664
    Swipe    791    1822    791    664
    Swipe    791    664    791    1822
    Swipe    791    664    791    1822
Close application
    Close Application