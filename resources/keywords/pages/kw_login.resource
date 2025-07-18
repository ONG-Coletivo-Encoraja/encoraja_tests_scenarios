*** Settings ***
Resource    ../../main.robot
Library    String

*** Keywords ***

Dado que o navergador esteja aberto no site da ONG Coletivo Encoraja
    Open Browser    ${urls.url}    browser=chrome
    Maximize Browser Window

E clicou no botão Login   
     Sleep    3
     Wait Until Element Is Visible    ${login.Button_login}    15
     Set Focus To Element    ${login.Button_login}
     Click Element   ${login.Button_login}
     Sleep    3


E fazer Login com Usuário Benefiário
    Sleep    10
    Wait Until Element Is Visible    ${login.Text_user}    15
    Input Text    ${login.Text_user}    ${dados_login.User_beneficiary}
    Input Password    ${login.Text_password}    ${dados_login.Password_beneficiary}
    Wait Until Element Is Visible    ${login.Button_enter}
    Set Focus To Element    ${login.Button_enter}
    Click Element   ${login.Button_enter}
    
E fazer Login com Usuário Voluntário
    Sleep    3
    Wait Until Element Is Visible    ${login.Text_user}    15
    Input Text    ${login.Text_user}    ${dados_login.User_volunter}
    Input Password    ${login.Text_password}    ${dados_login.Password_volunter}
    Wait Until Element Is Visible    ${login.Button_enter}
    Set Focus To Element    ${login.Button_enter}
    Click Element   ${login.Button_enter}

E fazer Login com Usuário Administrador
    Wait Until Element Is Visible    ${login.Text_user}    15
    Input Text    ${login.Text_user}    ${dados_login.User_administrator}
    Input Password    ${login.Text_password}    ${dados_login.Password_administrator}
    Wait Until Element Is Visible    ${login.Button_enter}
    Set Focus To Element    ${login.Button_enter}
    Click Element   ${login.Button_enter}