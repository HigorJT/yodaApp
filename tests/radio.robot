*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***
Deve selecionar a opção Javascript

    Start session
    Get started
    Navigate to     Check e Radio
    Go to item    Botões de radio    Escolha sua linguagem preferida

    Click Element    //android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and @text="Javascript "] 
    Sleep    1
    Element Should Be Visible    //android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and @text="Javascript "]       
   

    Sleep    3
    Close session