*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{home}
#Elementos da tela
...    Logged_in_screen=//img[@src='/img/girlshome.png']
...    User_name_adm=//button[contains(.,'zeze')]
...    User_name_volunteer=
...    User_name_beneficiary=

*** Keywords ***

Então o sistema exibe a lista de todos os eventos cadastrados no sistema (pendentes, aprovados e reprovados)
    Sleep    10
    Wait Until Element Is Visible    ${home.User_name_adm}    10
    Set Focus To Element    ${home.User_name_adm}