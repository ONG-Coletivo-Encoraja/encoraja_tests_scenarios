*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{login}
#Elementos da tela
...    Logo_encoraja=
...    Text_user=
...    Text_password=
...    Button_enter=
...    Logged_in_screen=

*** Keywords ***

Dado que o navergador esteja aberto no site da ONG Coletivo Encoraja
    Open Browser    ${geral.url}    browser=chrome
    Maximize Browser Window

E fazer Login com Usuário Benefiário
    Wait Until Element Is Visible    ${login.Text_user}    15
    Input Text    ${login.Text_user}    ${dados_login.User_beneficiary}
    Input Password    ${login.Text_password}    ${dados_login.Password_beneficiary}
    Wait Until Element Is Visible    ${login.Button_enter}
    Set Focus To Element    ${login.Button_enter}
    Press Key    ${none}    ENTER
    
E fazer Login com Usuário Voluntário
    Wait Until Element Is Visible    ${login.Text_user}    15
    Input Text    ${login.Text_user}    ${dados_login.User_volunter}
    Input Password    ${login.Text_password}    ${dados_login.Password_volunter}
    Wait Until Element Is Visible    ${login.Button_enter}
    Set Focus To Element    ${login.Button_enter}
    Press Key    ${none}    ENTER

E fazer Login com Usuário Administrador
    Wait Until Element Is Visible    ${login.Text_user}    15
    Input Text    ${login.Text_user}    ${dados_login.User_administrator}
    Input Password    ${login.Text_password}    ${dados_login.Password_administrator}
    Wait Until Element Is Visible    ${login.Button_enter}
    Set Focus To Element    ${login.Button_enter}
    Press Key    ${none}    ENTER