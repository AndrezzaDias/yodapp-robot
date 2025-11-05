*** Settings ***
Library    AppiumLibrary


*** Variables ***
${START}    QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android    
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true   

    Wait Until Page Contains        Yodapp    10
    Wait Until Page Contains        Mobile Training    10 
    Wait Until Page Contains        by Papito    10

Get started
    Wait Until Page Contains        ${START}    10
    Click Text                      ${START}

Navigate to
    [Arguments]    ${item_text}
    ${hamburger}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    
    Wait Until Element Is Visible    ${hamburger}  
    Click Element                    ${hamburger}   
    ${item_menu}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    Wait Until Element Is Visible    ${item_menu} 
    Click Element                    ${item_menu} 

Go to item
    [Arguments]    ${item}    ${checkpoit}
    Wait Until Page Contains         ${item}  
    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoit}

Close 
    Close Application
