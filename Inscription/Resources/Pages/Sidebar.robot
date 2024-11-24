*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{sidebar}
#Elementos da tela
# ______________________________ #
# ...    MENU - ADM - VOLUNTEER - BENEFICIARIO  ... #   
...    Button_events=(//button[contains(@data-state,'closed')])[3]
...    Button_events_beneficiary=(//button[contains(@data-state,'closed')])[4]
...    Button_inscriptions_adm=(//button[contains(@data-state,'closed')])[4]

*** Keywords ***
E acesse o menu lateral Eventos
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events}
    Click Button    ${sidebar.Button_events}
    Sleep    3

E que o Beneficiário acesse o menu lateral Eventos
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events_beneficiary}
    Click Button    ${sidebar.Button_events_beneficiary}
    Sleep    3

E que o Administrador acesse o menu lateral Inscrições
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_inscriptions_adm}
    Click Button    ${sidebar.Button_inscriptions_adm}
    Sleep    3



