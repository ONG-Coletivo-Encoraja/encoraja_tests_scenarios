*** Settings ***
Resource    ../../main.resource

*** Keywords ***
E acesse o menu lateral Eventos 2
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events}
    Click Button    ${sidebar.Button_events}
    Sleep    3

E que o Beneficiário acesse o menu lateral Eventos 2
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events_beneficiary}
    Click Button    ${sidebar.Button_events_beneficiary}
    Sleep    3

E que o Administrador acesse o menu lateral Inscrições
    Sleep    5
    Wait Until Element Is Visible    ${sidebar.Button_inscriptions_adm}
    Click Button    ${sidebar.Button_inscriptions_adm}
    Sleep    3



