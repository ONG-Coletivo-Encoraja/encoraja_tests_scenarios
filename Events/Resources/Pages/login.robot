* Settings *
Resource  ../main.robot
Library    String

* Variables *
&{login}
#Elementos da tela
...   Logo_encoraja=/html/body/div[1]/header/div/img
...   Text_login=/html/body/div[1]/header/div/a[1]/button
...   Text_usuario=//*[@id=":Rd7rmfj6:-form-item"]
...   Text_senha=//*[@id=":Rl7rmfj6:-form-item"]
...   Button_entrar=/html/body/div[1]/div/div[2]/form/button
...   Tela_logado=/html/body/div[2]/header/div/button[2]

* Keywords *
Dado que o navegador esteja aberto no site da Encoraja 
    Open Browser  ${geral.url}   browser=chrome  
    #Open Browser  ${geral.url}   browser=headlesschrome  
    Maximize Browser Window

E o formulário de login seja acessado
    sleep   10
    Wait Until Element Is Visible    ${login.Button_entrar}
    Set Focus To Element             ${login.Button_entrar}
    Press Keys                       ${None}                 ENTER 
    Wait Until Element Is Visible    ${login.Text_usuario}   15          
    Input Text                       ${login.Text_usuario}   ${dados_login.User_administrator} 
    Input Password                   ${login.Text_senha}     ${dados_login.Password_administrator}
    Wait Until Element Is Visible    ${login.Button_entrar}      
    Press Keys                       ${None}                 ENTER
    Set Focus To Element             ${login.Button_entrar}   
    Press Keys                       ${None}                 ENTER 
      
E seja realizado o Login com usuario Administrador
    Wait Until Element Is Visible    ${login.Text_usuario}   15          
    Input Text                       ${login.Text_usuario}   ${dados_login.User_volunter} 
    Input Password                   ${login.Text_senha}     ${dados_login.Password_volunter}
    Wait Until Element Is Visible    ${login.Button_entrar}      
    Press Keys                       ${None}                 ENTER
    Set Focus To Element             ${login.Button_entrar} 
    Wait Until Element Is Visible    ${login.Text_id_base}   15  
    Press Keys                       ${None}                 ENTER 

E seja realizado o  Login com usuario Beneficiário
    Wait Until Element Is Visible    ${login.Text_usuario}   15          
    Input Text                       ${login.Text_usuario}   ${dados_login.User_beneficiary} 
    Input Password                   ${login.Text_senha}     ${dados_login.Password_beneficiary}
    Wait Until Element Is Visible    ${login.Button_entrar}      
    Press Keys                       ${None}                 ENTER
    Set Focus To Element             ${login.Button_entrar} 
    Wait Until Element Is Visible    ${login.Text_id_base}   30 
    Press Keys                       ${None}                 ENTER