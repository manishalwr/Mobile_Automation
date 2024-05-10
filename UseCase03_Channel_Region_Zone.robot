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

Enter Username

    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    Sleep    4

Enter Password
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]
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
*** Test Cases ***
Verify channel dropdown option
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

#Verify Zone dropdown option
#   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
#   Sleep    4
#   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
#   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]
#
#Verify region dropdown option
#   Sleep    2
#   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
#   Sleep    2
#   Press Keycode    4
#   #AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.ListView[@text="Options list"]
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 1"]
#   Sleep    2
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 2"]
#   Sleep    2
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 3"]
#   Sleep    2
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 4"]
#   Sleep    2
#   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 5"]
#   Sleep    2
#   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH 2"]
#   Sleep    2

App close
   Close Application

Launch App Test_1
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

Enter Username_1
    #AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    173061
    Sleep    6

Enter Password_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123

Submit Credentials_1
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]
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
    sleep  4
*** Test Cases ***

Verify channel dropdown option_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NEXA"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Verify Zone dropdown Central_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   #sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="WEST"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="WEST"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="CENTRAL"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="CENTRAL"]

Verify region dropdown option for central_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="CENTRAL 1"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="CENTRAL 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="CENTRAL 2"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="CENTRAL 2"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="CENTRAL 3"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="CENTRAL 3"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="CENTRAL 4"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="CENTRAL 4"]
   

Select Zone dropdown East_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Swipe    850    1682    850    884
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="EAST"]

Verify region dropdown option for East_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST 1"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="EAST 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST 2"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="EAST 2"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST 3"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="EAST 3"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="EAST 4"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="EAST 4"]
   

Select Zone dropdown North_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Swipe    850    1682    850    884
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]

Verify region dropdown option for North_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   #Press Keycode    4
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 1"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 2"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 2"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 3"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 3"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 4"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 4"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 5"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH 5"]


Select Zone dropdown South
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Swipe    850    1682    850    884
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   #Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="SOUTH"]

Verify region dropdown option for South
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH 1"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH 2"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH 2"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH 3"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH 3"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH 4"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH 4"]

Select Zone dropdown South East
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Swipe    850    1682    850    884
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   #Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH EAST"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="SOUTH EAST"]

Verify region dropdown option for South East
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH EAST 1"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH EAST 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="SOUTH EAST 2"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="SOUTH EAST 2"]

Select Zone dropdown West
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Swipe    850    1682    850    884
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="WEST"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="WEST"]

Verify region dropdown option for West
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   sleep  2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="WEST 1"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="WEST 1"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="WEST 2"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="WEST 2"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="WEST 3"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="WEST 3"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="WEST 4"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="WEST 4"]
 

 App close_1
   Close Application

Launch App Test_2
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
   

Enter Username_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    188603
    Sleep    6

Enter Password_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
  

Submit Credentials_2
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]
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
*** Test Cases ***

Verify channel dropdown option_2
   Press Keycode    4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]
   Close Application

