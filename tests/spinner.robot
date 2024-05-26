*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***
Deve escolher o nível Padawan

    Start session
    Get started
    Navigate to     Formulários
    Go to item      Cadastro    Crie sua conta.

    Select Level    Padawan

    Close session

Deve escolher o nível Jedi

    Start session
    Get started
    Navigate to     Formulários
    Go to item      Cadastro    Crie sua conta.

    Select Level    Jedi

    Close session

Deve escolher o nível Sith

    Start session
    Get started
    Navigate to     Formulários
    Go to item      Cadastro    Crie sua conta.

    Select Level    Sith

    Close session

Deve escolher o nível Outros

    Start session
    Get started
    Navigate to     Formulários
    Go to item      Cadastro    Crie sua conta.

    Select Level    Outros

    Close session

*** Keywords ***
Select Level
    [Arguments]    ${level}

    Click Element    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${level}"]
