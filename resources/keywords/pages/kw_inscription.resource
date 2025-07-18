*** Settings ***
Resource    ../../main.resource

*** Keywords ***


E selecionar o novo evento criado
    Sleep    3
    Wait Until Element Is Visible    ${inscription.Title_page_all_events}
    Scroll Element Into View    ${inscription.Card_event}
    Set Focus To Element    ${inscription.Card_event}
    Click Element    ${inscription.Card_event}
    Wait Until Element Is Visible    ${inscription.Title_event_details}    5

E filtre apenas as inscrições Pendentes
    Sleep    3
    Wait Until Element Is Visible    ${inscription.Filter_inscriptions_adm}
    Set Focus To Element    ${inscription.Filter_inscriptions_adm}
    Sleep    1
    Press Keys    ${inscription.Filter_inscriptions_adm}    ARROW_DOWN    ARROW_DOWN    ENTER

E clicar no botão "Ver inscritos"
    Sleep    3
    Wait Until Element Is Visible    ${inscription.Button_show_inscriptions}
    Click Button    ${inscription.Button_show_inscriptions}

E selecionar a checkbox de presença
    Sleep    1
    Set Focus To Element    ${inscription.Button_checkbox}
    Click Element    ${inscription.Button_checkbox}

Quando selecionar o evento para visualização de inscrições
    Sleep    3
    E o novo evento será exibido na listagem de Todos os eventos
    Quando selecionar o evento Finalizado para visualização


Quando clicar no botão "Me Inscrever"
    Sleep    3
    Scroll Element Into View    ${inscription.Button_inscription}
    Set Focus To Element    ${inscription.Button_inscription}
    Click Element    ${inscription.Button_inscription}

Quando clicar no botão "Alterar status" 
    Sleep    3
    Wait Until Element Is Visible    ${inscription.Button_alter_status}
    Click Button    ${inscription.Button_alter_status}
    Wait Until Element Is Visible    ${inscription.Pop_up_alter_status}

Então o sistema exibe uma mensagem de confirmação que após confirmada inscrição é efetuada com sucesso
    Wait Until Element Is Visible    ${inscription.Mensage_inscription_confirmation}    3
    Set Focus To Element    ${inscription.Button_confirm}
    Click Element    ${inscription.Button_confirm}
    Wait Until Element Is Visible    ${inscription.Mensage_inscription_sucess}
    Capture Element Screenshot    ${inscription.Mensage_inscription_sucess}

Então o sistema exibe uma caixa de PopUp para alteração de Status ou cancelamento da inscrição
    Sleep    3
    Wait Until Element Is Visible    ${inscription.Button_status_inscription}
    Set Focus To Element    ${inscription.Button_status_inscription}
    Sleep    1
    Press Keys    ${inscription.Button_status_inscription}    ARROW_UP    ENTER
    Sleep    3
    Capture Page Screenshot

Então clicar em Salvar
    Sleep    1
    Set Focus To Element    ${inscription.Button_save_list}
    Click Button    ${inscription.Button_save_list}

    