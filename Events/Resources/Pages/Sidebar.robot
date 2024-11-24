*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{sidebar}
#Elementos da tela
# ______________________________ #
# ...    MENU - ADM    ... #   
...    Button_events=(//button[contains(@data-state,'closed')])[3]

*** Keywords ***
E acesse o menu lateral Eventos
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events}
    Click Button    ${sidebar.Button_events}
    Sleep    3



