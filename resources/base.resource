*** Settings ***

Library    AppiumLibrary

*** Variables ***

${BTN_START}    QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723	
    ...                 platformName=Android
    ...                 deviceName=Android Emulator   
    ...                 automationName=UIAutomator2   
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
                 
Get started
    Wait Until Page Contains    ${BTN_START}     5
    Click Element    xpath=//android.widget.Button[@text="${BTN_START}"]
    
Navigate to
    [Arguments]    ${item_text}
    ${hamburguer}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    

    Wait Until Element Is Visible    ${hamburguer}    5     
    Click Element                    ${hamburguer}

    ${formulario}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    Wait Until Element Is Visible    ${formulario}    5
    Click Element                    ${formulario}
    
Go to item 
    [Arguments]    ${item}    ${checkpoint}
    Wait Until Page Contains         ${item}     5
    Click Element                    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/tvItemTitle" and @text="${item}"]
    Wait Until Page Contains         ${checkpoint}
    
    Sleep    5
    
Close session
    Close Application

