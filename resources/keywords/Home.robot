*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{home}
#Elementos da tela
...    Logged_in_screen=//img[@src='/img/girlshome.png']
...    User_name_adm=//label[@class='text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-white mx-4 flex items-center justify-between'][contains(.,'João da Silva')]
...    User_name_volunteer=//label[@class='text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-white mx-4 flex items-center justify-between'][contains(.,'Maria Oliveira')]
...    User_name_beneficiary=//label[@class='text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-white mx-4 flex items-center justify-between'][contains(.,'Ana Oliveira')]

*** Keywords ***

Dado que eu esteja logado no sistema como Administrador
    Sleep    10
    Wait Until Element Is Visible    ${home.User_name_adm}    10
    Set Focus To Element    ${home.User_name_adm}

Dado que eu esteja logado no sistema como Voluntário
    Sleep    10
    Wait Until Element Is Visible    ${home.User_name_volunteer}    10
    Set Focus To Element    ${home.User_name_volunteer}

Dado que eu esteja logado no sistema como Benefiário
    Sleep    10
    Wait Until Element Is Visible    ${home.User_name_beneficiary}    10
    Set Focus To Element    ${home.User_name_beneficiary}