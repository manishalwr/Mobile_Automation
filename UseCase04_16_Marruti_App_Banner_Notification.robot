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
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]    timeout=30
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username
    #AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=30
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    203408
    sleep  6

Enter Password
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  Maruti@123

Submit Credentials
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  2

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

*** Test Cases ***

Verify channel dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=40
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NEXA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]
Verify Zone dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View    timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]

Verify region dropdown option
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   Press Keycode    4
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ListView[@text="Options list"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 1"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 1"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH 1"]


Enter in the page
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]


Verify homepage tabs
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Others Banner Notifications"]
   sleep  4

Others tab info
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Others Banner Notifications"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Warranty Others Banner Notifications"]
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=70
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View

Select date
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Select Date"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Select Date"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="26"]   timeout=40
   AppiumLibrary.Click Element   xpath=//android.widget.Button[@text="26"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="30"]   timeout=40
   AppiumLibrary.Click Element   xpath=(//android.widget.Button[@text="30"])[2]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]

Create the dummy notofication

   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View
   #AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View    Testing123
   AppiumLibrary.Input Text Into Current Element    testing1234
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Publish"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Publish"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Publishing Banner Notification"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Publish"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Published Successfully"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Dismiss"]

Draft Banner Notification
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Banner Notification Create an alert on the homepage."]  timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Banner Notification Create an alert on the homepage."]

Select date again
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Select Date"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Select Date"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="26"]   timeout=40
   AppiumLibrary.Click Element   xpath=//android.widget.Button[@text="26"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="30"]   timeout=40
   AppiumLibrary.Click Element   xpath=(//android.widget.Button[@text="30"])[2]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View   timeout=30
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View
   #AppiumLibrary.Input Text    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View    Testing123
   AppiumLibrary.Input Text Into Current Element    testing2345
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="back-button"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="back-button"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Save Draft"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Save Draft"]
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Banner Notification"]    timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[2]/android.view.View
   AppiumLibrary.Input Text Into Current Element    testing458
   Press Keycode    4
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Publish"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Publishing Banner Notification"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Publish"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Published Successfully"]    timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Dismiss"]

close the application
  Close Application


Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=40
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_1
    #AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=30
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    173061
    sleep  6

Enter Password_1
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_1

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
*** Test Cases ***

Verify channel dropdown option_1
   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NEXA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]
Verify Zone dropdown option_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]

Verify region dropdown option_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=40
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   Press Keycode    4
   #AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 1"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH 1"]
   Press Keycode    4

Verify Banner notifications should be visible
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.widget.TextView   timeout=40

Enter in the page_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify homepage tabs_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]   timeout=40
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="Warranty Warranty Parts Approval & More"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="Homepage"]/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.widget.Image[2]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Notifications"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Banner Notifications"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Custom"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Custom"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="1"]    timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="30"]   timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="30"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Done"]    timeout=40
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Done"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="testing2345testing458"]   timeout=40
   Close Application



