*** Settings ***
Resource    ../resources/base.resource


*** Test Cases ***
Deve escolher o nível Jedi

    Start session
    Get started
    Navigate to     Formulários
    Go to item      Cadastro       Crie sua conta.
                    
    Input Text              id=com.qaxperience.yodapp:id/etUsername         Yoda    
    Input Text              id=com.qaxperience.yodapp:id/etEmail            yoda@qax.com
    Input Password          id=com.qaxperience.yodapp:id/etPassword         jedi

    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.TextView
    Click Text                       Jedi
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit



         




   

    