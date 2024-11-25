*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{login}
#Elementos da tela
...    Logo_encoraja=//img[contains(@alt,'Logo')]
...    Button_login=(//button[contains(@type,'button')])[2]
...    Text_user=//input[contains(@aria-describedby,':R6fndt7:-form-item-description')]
...    Text_password=//input[contains(@type,'password')]
...    Button_enter=//button[@class='inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2 mt-4'][contains(.,'Entrar')]
...    Logged_in_screen=//img[@src='/img/girlshome.png']

*** Keywords ***

Dado que o navergador esteja aberto no site da ONG Coletivo Encoraja
    Open Browser    ${geral.url}    browser=chrome
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