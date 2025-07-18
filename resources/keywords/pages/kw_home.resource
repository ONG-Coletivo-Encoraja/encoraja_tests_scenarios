*** Settings ***
Resource    ../../main.resource

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