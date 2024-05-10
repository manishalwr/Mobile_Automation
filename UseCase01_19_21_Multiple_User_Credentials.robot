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
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]    timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    1

Enter Username_1

    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    214248
    Sleep    6

Enter Password_1
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    1

Submit Credentials_1
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

*** Test Cases ***

Verify the sidebar_1
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="menu"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="menu"]
   AppiumLibrary.Wait Until Page Contains    "Sachin AhujaStaff ID: 214248Role: RSM"   timeout=90
   AppiumLibrary.Element Should Contain Text    xpath=//android.widget.TextView[@text="Sachin AhujaStaff ID: 214248Role: RSM"]    Sachin AhujaStaff ID: 214248Role: RSM
   sleep  1
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Logout"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout"]  timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout"]
   Close Application

Launch App Test_2
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username_2
    #AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    173061


Enter Password_2
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials_2
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

Select the channel_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=90
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Verify Zone dropdown option_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=90
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]   timeout=90
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]

Verify region dropdown option_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View    timeout=90
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 2"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH 2"]
   Sleep    2

Enter in the homepage_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify the sidebar_2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="menu"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="menu"]
   AppiumLibrary.Wait Until Page Contains    "B SURESHStaff ID: 173061Role: CHA"   timeout=90
   AppiumLibrary.Element Should Contain Text    xpath=//android.widget.TextView[@text="B SURESHStaff ID: 173061Role: CHA"]    B SURESHStaff ID: 173061Role: CHA
   sleep  2
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Logout"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout"]  timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout"]
   Close Application

*** Test Cases ***
Launch App Test_3
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    188603
    sleep  6
Enter Password_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials_3
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    
*** Test Cases ***
Handle Login Prompt_3
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_3
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_3
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]

*** Test Cases ***

Verify the sidebar_3
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="menu"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="menu"]
   AppiumLibrary.Wait Until Page Contains    "Mayank AgarwalStaff ID: 188603Role: TSM"  timeout=90
   AppiumLibrary.Element Should Contain Text    xpath=//android.widget.TextView[@text="Mayank AgarwalStaff ID: 188603Role: TSM"]    Mayank AgarwalStaff ID: 188603Role: TSM
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Logout"]  timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Logout"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout"]  timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout"]
   Close Application

*** Test Cases ***
Launch App Test_4
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]  timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username_4

    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    420696
    sleep  6

Enter Password_4
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText    timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText  maruti123
    Sleep    2

Submit Credentials_4
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]  timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]

*** Test Cases ***
Handle Login Prompt_4
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_4
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_4
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]
    sleep  2
*** Test Cases ***
Enter in the homepage_4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=90
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=90
   AppiumLibrary.Click Element   xpath=//android.widget.Button[@text="Enter"]

Verify the sidebar_4
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="menu"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="menu"]
   AppiumLibrary.Wait Until Page Contains    "Amit MishraStaff ID: 420696Role: HOC"   timeout=90
   AppiumLibrary.Element Should Contain Text    xpath=//android.widget.TextView[@text="Amit MishraStaff ID: 420696Role: HOC"]    Amit MishraStaff ID: 420696Role: HOC
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Logout"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Logout"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout"]    timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout"]
   Close Application

*** Test Cases ***
Launch App Test_5
     Open Application    ${REMOTE_URL}    app=${APP}   platformName=${PLATFORM_NAME}      deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}   automationName=${AUTOMATION_NAME}
     AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]   timeout=90
     AppiumLibrary.Click Element    xpath=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
     Sleep    2

Enter Username_5

    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="User ID"]   timeout=90
    AppiumLibrary.Click Element    ${LOGIN_USER_FIELD3}
    AppiumLibrary.Input Text Into Current Element    203408
    sleep  6

Enter Password_5
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   timeout=90
    AppiumLibrary.Click Element   xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText
    AppiumLibrary.Input Text      xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.widget.EditText   Maruti@123
    Sleep    2

Submit Credentials_5
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Login"]   timeout=90
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Login"]
    sleep  2

*** Test Cases ***
Handle Login Prompt_5
    ${login_prompt_visible}=    Run Keyword And Return Status    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Multiples Login Detected"]
    Run Keyword If    ${login_prompt_visible}    Handle Logout Prompt_5
    ...    ELSE
    ...    Log    "No login prompt detected. Proceeding with login."

*** Keywords ***
Handle Logout Prompt_5
    Log    "Same user is logged in elsewhere. Please log out from other devices."
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout from other devices"]

*** Test Cases ***

Select the channel_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=90
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View   timeout=30
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="ARENA"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="ARENA"]

Verify Zone dropdown option_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Image[@text="Maruti-logo"]   timeout=30
   AppiumLibrary.Click Element    xpath=//android.widget.Image[@text="Maruti-logo"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View   timeout=30
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH"]   timeout=30
   AppiumLibrary.Element Should Be Visible    xpath=//android.view.View[@text="NORTH"]
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH"]

Verify region dropdown option_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View   timeout=30
   AppiumLibrary.Click Element    xpath=//android.webkit.WebView[@text="ServizApp"]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View/android.view.View/android.view.View
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@text="NORTH 2"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.view.View[@text="NORTH 2"]


Enter in the homepage_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Enter"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Enter"]

Verify the sidebar_5
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="menu"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="menu"]
   AppiumLibrary.Wait Until Page Contains    "Naveen KumarStaff ID: 203408Role: HO2"    timeout=90
   AppiumLibrary.Element Should Contain Text    xpath=//android.widget.TextView[@text="Naveen KumarStaff ID: 203408Role: HO2"]    Naveen KumarStaff ID: 203408Role: HO2
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Logout"]    timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="Logout"]
   AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@text="Yes, Logout"]   timeout=90
   AppiumLibrary.Click Element    xpath=//android.widget.Button[@text="Yes, Logout"]
   Close Application


