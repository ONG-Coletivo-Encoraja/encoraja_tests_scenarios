*** Settings ***
Resource    ../main.robot

*** Keywords ***

Quando clicar no menu no botão Criar Evento
    Sleep    3
    Wait Until Element Is Visible    ${event.Button_create_events}
    Set Focus To Element    ${event.Button_create_events}
    Click Element    ${event.Button_create_events}
    Sleep   5
    Wait Until Element Is Visible    ${event.Title_page_create_events}    20

Quando o Voluntário clicar no menu no botão Criar Evento
    Sleep    3
    Wait Until Element Is Visible    ${event.Button_create_events_volunter}
    Set Focus To Element    ${event.Button_create_events_volunter}
    Click Element    ${event.Button_create_events_volunter}
    Sleep   5
    Wait Until Element Is Visible    ${event.Title_page_create_events}    20

Quando selecionar o evento para visualização
    Sleep    3
    E o novo evento será exibido na listagem de Todos os eventos
    Click Element    ${event.Event_details}
    Sleep    10
    Wait Until Element Is Visible    ${event.Button_edit_event}    10

Quando selecionar o evento Ativo para visualização
    Sleep    3
    E o novo evento será exibido na listagem de Todos os eventos
    Click Element    ${event.Event_details_active}
    Sleep    10
    Wait Until Element Is Visible    ${event.Button_edit_event}    10

Quando selecionar o evento Finalizado para visualização
    Sleep    3
    E o novo evento será exibido na listagem de Todos os eventos
    Click Element    ${event.Event_details_finish}

E clicar no botão "Editar evento"
    Sleep    3
    Set Focus To Element    ${event.Button_edit_event}
    Click Element    ${event.Button_edit_event}
    Wait Until Element Is Visible    ${event.Title_page_create_events}

E alterar o Status de Pendente para Ativo
    Sleep    3
    Scroll Element Into View    ${event.Status_event_pending}
    Wait Until Element Is Visible    ${event.Status_event_pending}
    Set Focus To Element    ${event.Status_event_pending}  
    Sleep    1
    Press Keys    ${event.Status_event_pending}    ARROW_UP    ARROW_UP    ENTER 

E alterar o Status de Ativo para Finalizado
    Sleep    3
    Scroll Element Into View    ${event.Status_event_active}
    Wait Until Element Is Visible    ${event.Status_event_active}
    Set Focus To Element    ${event.Status_event_active}  
    Sleep    1
    Press Keys    ${event.Status_event_active}    ARROW_DOWN    ARROW_DOWN    ARROW_DOWN    ENTER 

E o evento será apresentado com o Status "Ativo"
    E o novo evento será exibido na listagem de Todos os eventos
    Set Focus To Element    ${event.Status_event_active_card}
    Capture Page Screenshot

E o evento será apresentado com o Status "Finalizado"
    E o novo evento será exibido na listagem de Todos os eventos
    Set Focus To Element    ${event.Status_event_finish}
    Capture Page Screenshot

E clicar no botão "Deixe aqui a sua avaliação!"
    Sleep    10
    Wait Until Element Is Visible    ${event.Button_review}
    Click Button    ${event.Button_review}
    Wait Until Element Is Visible    ${event.Pop_up_review}

E avaliar o evento
    Sleep    3
    Set Focus To Element    ${event.Button_review_stars}
    Click Element    ${event.Button_review_stars}
    Sleep    1
    Set Focus To Element    ${event.Button_review_3}
    Click Element    ${event.Button_review_5}
    Sleep    1
    Set Focus To Element    ${event.Input_review_text}
    Input Text    ${event.Input_review_text}    Avaliação teste Robot
    
E o Voluntário preencher os campos do formulário “Cadastrar evento” com o status de pendente
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_name}
    Set Focus To Element    ${event.Input_event_name}
    Input Text    ${event.Input_event_name}    Evento Teste Robot Pendente Voluntário

    ${tomorrow_date}=    Evaluate    (__import__('datetime').datetime.now() + __import__('datetime').timedelta(days=1)).strftime('${DATE_FORMAT}')
    Log    ${tomorrow_date}
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_data}
    Set Focus To Element    ${event.Input_event_data}
    Input Text    ${event.Input_event_data}    ${tomorrow_date}

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_time}
    Set Focus To Element    ${event.Input_event_time}   
    Input Text    ${event.Input_event_time}    1400

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_description}
    Set Focus To Element    ${event.Input_event_description}  
    Input Text    ${event.Input_event_description}    Descrição Evento Teste Robot Voluntário

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_modality}
    Set Focus To Element    ${event.Select_event_modality}  
    Sleep    1
    Press Keys    ${event.Select_event_modality}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_type}
    Set Focus To Element    ${event.Select_event_type}  
    Sleep    1
    Press Keys    ${event.Select_event_type}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_public}
    Set Focus To Element    ${event.Input_event_public}  
    Input Text    ${event.Input_event_public}    Mulheres

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_total_vacancies}
    Set Focus To Element    ${event.Input_event_total_vacancies}
    Clear Element Text    ${event.Input_event_total_vacancies}  
    Input Text    ${event.Input_event_total_vacancies}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_social_vacancies}
    Set Focus To Element    ${event.Input_event_social_vacancies}  
    Clear Element Text    ${event.Input_event_social_vacancies} 
    Input Text    ${event.Input_event_social_vacancies}    10

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_regular_vacancies}
    Set Focus To Element    ${event.Input_event_regular_vacancies}  
    Clear Element Text    ${event.Input_event_regular_vacancies} 
    Input Text    ${event.Input_event_regular_vacancies}    5

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_material}
    Set Focus To Element    ${event.Input_event_material}  
    Input Text    ${event.Input_event_material}    Material teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_interest_area}
    Set Focus To Element    ${event.Input_event_interest_area}  
    Input Text    ${event.Input_event_interest_area}    Area de interesse teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_price}
    Set Focus To Element    ${event.Input_event_price}
    Clear Element Text    ${event.Input_event_price}   
    Input Text    ${event.Input_event_price}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_hour}
    Set Focus To Element    ${event.Input_event_hour}  
    Clear Element Text    ${event.Input_event_hour} 
    Input Text    ${event.Input_event_hour}    4


E preencher os campos do formulário “Cadastrar evento” com o status de pendente
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_name}
    Set Focus To Element    ${event.Input_event_name}
    Input Text    ${event.Input_event_name}    Evento Teste Robot Pendente ADM

    ${tomorrow_date}=    Evaluate    (__import__('datetime').datetime.now() + __import__('datetime').timedelta(days=1)).strftime('${DATE_FORMAT}')
    Log    ${tomorrow_date}
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_data}
    Set Focus To Element    ${event.Input_event_data}
    Input Text    ${event.Input_event_data}    ${tomorrow_date}

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_time}
    Set Focus To Element    ${event.Input_event_time}   
    Input Text    ${event.Input_event_time}    1400

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_description}
    Set Focus To Element    ${event.Input_event_description}  
    Input Text    ${event.Input_event_description}    Descrição Evento Teste Robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_modality}
    Set Focus To Element    ${event.Select_event_modality}  
    Sleep    1
    Press Keys    ${event.Select_event_modality}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_type}
    Set Focus To Element    ${event.Select_event_type}  
    Sleep    1
    Press Keys    ${event.Select_event_type}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_public}
    Set Focus To Element    ${event.Input_event_public}  
    Input Text    ${event.Input_event_public}    Mulheres

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_total_vacancies}
    Set Focus To Element    ${event.Input_event_total_vacancies}
    Clear Element Text    ${event.Input_event_total_vacancies}  
    Input Text    ${event.Input_event_total_vacancies}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_social_vacancies}
    Set Focus To Element    ${event.Input_event_social_vacancies}  
    Clear Element Text    ${event.Input_event_social_vacancies} 
    Input Text    ${event.Input_event_social_vacancies}    10

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_regular_vacancies}
    Set Focus To Element    ${event.Input_event_regular_vacancies}  
    Clear Element Text    ${event.Input_event_regular_vacancies} 
    Input Text    ${event.Input_event_regular_vacancies}    5

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_material}
    Set Focus To Element    ${event.Input_event_material}  
    Input Text    ${event.Input_event_material}    Material teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_interest_area}
    Set Focus To Element    ${event.Input_event_interest_area}  
    Input Text    ${event.Input_event_interest_area}    Area de interesse teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_price}
    Set Focus To Element    ${event.Input_event_price}
    Clear Element Text    ${event.Input_event_price}   
    Input Text    ${event.Input_event_price}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_hour}
    Set Focus To Element    ${event.Input_event_hour}  
    Clear Element Text    ${event.Input_event_hour} 
    Input Text    ${event.Input_event_hour}    4

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_volunter}
    Set Focus To Element    ${event.Select_event_volunter}  
    Sleep    1
    Press Keys    ${event.Select_event_volunter}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_status}
    Set Focus To Element    ${event.Select_event_status}  
    Sleep    1
    Press Keys    ${event.Select_event_status}    ARROW_DOWN    ENTER 

E preencher os campos do formulário “Cadastrar evento” com o status de Ativo
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_name}
    Set Focus To Element    ${event.Input_event_name}
    Input Text    ${event.Input_event_name}    Evento Teste Robot Ativo ADM

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_data}
    Set Focus To Element    ${event.Input_event_data}
    Input Text    ${event.Input_event_data}    24112024

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_time}
    Set Focus To Element    ${event.Input_event_time}   
    Input Text    ${event.Input_event_time}    1400

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_description}
    Set Focus To Element    ${event.Input_event_description}  
    Input Text    ${event.Input_event_description}    Descrição Evento Teste Robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_modality}
    Set Focus To Element    ${event.Select_event_modality}  
    Sleep    1
    Press Keys    ${event.Select_event_modality}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_type}
    Set Focus To Element    ${event.Select_event_type}  
    Sleep    1
    Press Keys    ${event.Select_event_type}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_public}
    Set Focus To Element    ${event.Input_event_public}  
    Input Text    ${event.Input_event_public}    Mulheres

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_total_vacancies}
    Set Focus To Element    ${event.Input_event_total_vacancies}
    Clear Element Text    ${event.Input_event_total_vacancies}  
    Input Text    ${event.Input_event_total_vacancies}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_social_vacancies}
    Set Focus To Element    ${event.Input_event_social_vacancies}  
    Clear Element Text    ${event.Input_event_social_vacancies} 
    Input Text    ${event.Input_event_social_vacancies}    10

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_regular_vacancies}
    Set Focus To Element    ${event.Input_event_regular_vacancies}  
    Clear Element Text    ${event.Input_event_regular_vacancies} 
    Input Text    ${event.Input_event_regular_vacancies}    5

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_material}
    Set Focus To Element    ${event.Input_event_material}  
    Input Text    ${event.Input_event_material}    Material teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_interest_area}
    Set Focus To Element    ${event.Input_event_interest_area}  
    Input Text    ${event.Input_event_interest_area}    Area de interesse teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_price}
    Set Focus To Element    ${event.Input_event_price}
    Clear Element Text    ${event.Input_event_price}   
    Input Text    ${event.Input_event_price}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_hour}
    Set Focus To Element    ${event.Input_event_hour}  
    Clear Element Text    ${event.Input_event_hour} 
    Input Text    ${event.Input_event_hour}    4

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_volunter}
    Set Focus To Element    ${event.Select_event_volunter}  
    Sleep    1
    Press Keys    ${event.Select_event_volunter}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_status}
    Set Focus To Element    ${event.Select_event_status}  
    Sleep    1
    Press Keys    ${event.Select_event_status}    ENTER 


E preencher os campos do formulário “Cadastrar evento” com dados inválidos
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_name}
    Set Focus To Element    ${event.Input_event_name}
    Input Text    ${event.Input_event_name}    Evento Teste Robot inválido ADM

    # Data inválida, anterior a data a atual
    ${yesterday_date}=    Evaluate    (__import__('datetime').datetime.now() + __import__('datetime').timedelta(days=-1)).strftime('${DATE_FORMAT}')
    Log    ${yesterday_date}
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_data}
    Set Focus To Element    ${event.Input_event_data}
    Input Text    ${event.Input_event_data}    ${yesterday_date}

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_time}
    Set Focus To Element    ${event.Input_event_time}   
    Input Text    ${event.Input_event_time}    1400

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_description}
    Set Focus To Element    ${event.Input_event_description}  
    Input Text    ${event.Input_event_description}    Descrição Evento Teste Robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_modality}
    Set Focus To Element    ${event.Select_event_modality}  
    Sleep    1
    Press Keys    ${event.Select_event_modality}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_type}
    Set Focus To Element    ${event.Select_event_type}  
    Sleep    1
    Press Keys    ${event.Select_event_type}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_public}
    Set Focus To Element    ${event.Input_event_public}  
    Input Text    ${event.Input_event_public}    Mulheres

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_total_vacancies}
    Set Focus To Element    ${event.Input_event_total_vacancies}
    Clear Element Text    ${event.Input_event_total_vacancies}  
    Input Text    ${event.Input_event_total_vacancies}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_social_vacancies}
    Set Focus To Element    ${event.Input_event_social_vacancies}  
    Clear Element Text    ${event.Input_event_social_vacancies} 
    Input Text    ${event.Input_event_social_vacancies}    10

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_regular_vacancies}
    Set Focus To Element    ${event.Input_event_regular_vacancies}  
    Clear Element Text    ${event.Input_event_regular_vacancies} 
    Input Text    ${event.Input_event_regular_vacancies}    5

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_material}
    Set Focus To Element    ${event.Input_event_material}  
    Input Text    ${event.Input_event_material}    Material teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_interest_area}
    Set Focus To Element    ${event.Input_event_interest_area}  
    Input Text    ${event.Input_event_interest_area}    Area de interesse teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_price}
    Set Focus To Element    ${event.Input_event_price}
    Clear Element Text    ${event.Input_event_price}   
    Input Text    ${event.Input_event_price}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_hour}
    Set Focus To Element    ${event.Input_event_hour}  
    Clear Element Text    ${event.Input_event_hour} 
    Input Text    ${event.Input_event_hour}    4

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_volunter}
    Set Focus To Element    ${event.Select_event_volunter}  
    Sleep    1
    Press Keys    ${event.Select_event_volunter}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_status}
    Set Focus To Element    ${event.Select_event_status}  
    Sleep    1
    Press Keys    ${event.Select_event_status}    ENTER 

E o Voluntário preencher os campos do formulário “Cadastrar evento” com dados inválidos
     Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_name}
    Set Focus To Element    ${event.Input_event_name}
    Input Text    ${event.Input_event_name}    Evento Teste Robot Pendente Voluntário

    # Data inválida, anterior a data a atual
    ${yesterday_date}=    Evaluate    (__import__('datetime').datetime.now() + __import__('datetime').timedelta(days=-1)).strftime('${DATE_FORMAT}')
    Log    ${yesterday_date}
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_data}
    Set Focus To Element    ${event.Input_event_data}
    Input Text    ${event.Input_event_data}    ${yesterday_date}

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_time}
    Set Focus To Element    ${event.Input_event_time}   
    Input Text    ${event.Input_event_time}    1400

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_description}
    Set Focus To Element    ${event.Input_event_description}  
    Input Text    ${event.Input_event_description}    Descrição Evento Teste Robot Voluntário

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_modality}
    Set Focus To Element    ${event.Select_event_modality}  
    Sleep    1
    Press Keys    ${event.Select_event_modality}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Select_event_type}
    Set Focus To Element    ${event.Select_event_type}  
    Sleep    1
    Press Keys    ${event.Select_event_type}    ARROW_DOWN    ARROW_DOWN    ENTER  

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_public}
    Set Focus To Element    ${event.Input_event_public}  
    Input Text    ${event.Input_event_public}    Mulheres

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_total_vacancies}
    Set Focus To Element    ${event.Input_event_total_vacancies}
    Clear Element Text    ${event.Input_event_total_vacancies}  
    Input Text    ${event.Input_event_total_vacancies}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_social_vacancies}
    Set Focus To Element    ${event.Input_event_social_vacancies}  
    Clear Element Text    ${event.Input_event_social_vacancies} 
    Input Text    ${event.Input_event_social_vacancies}    10

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_regular_vacancies}
    Set Focus To Element    ${event.Input_event_regular_vacancies}  
    Clear Element Text    ${event.Input_event_regular_vacancies} 
    Input Text    ${event.Input_event_regular_vacancies}    5

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_material}
    Set Focus To Element    ${event.Input_event_material}  
    Input Text    ${event.Input_event_material}    Material teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_interest_area}
    Set Focus To Element    ${event.Input_event_interest_area}  
    Input Text    ${event.Input_event_interest_area}    Area de interesse teste robot

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_price}
    Set Focus To Element    ${event.Input_event_price}
    Clear Element Text    ${event.Input_event_price}   
    Input Text    ${event.Input_event_price}    15

    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_hour}
    Set Focus To Element    ${event.Input_event_hour}  
    Clear Element Text    ${event.Input_event_hour} 
    Input Text    ${event.Input_event_hour}    4
    
E clicar no botão “Salvar” 
    Sleep    1
    Set Focus To Element   ${event.Button_save_event} 
    Click Element    ${event.Button_save_event}

E o novo evento será exibido na listagem de Todos os eventos
    Sleep    1
    Wait Until Element Is Visible    ${event.Input_search}
    Set Focus To Element    ${event.Input_search}
    Input Text    ${event.Input_search}    Evento Teste Robot
    Sleep    5
    Press Keys    ${event.Input_search}    ENTER 
    Sleep    5
    Capture Page Screenshot

E na tela de Eventos o novo evento será exibido na listagem de Todos os eventos
    E acesse o menu lateral Eventos 2
    E o novo evento será exibido na listagem de Todos os eventos

Então o sistema exibe mensagem de erro "Falha no cadastro!A data do evento não pode ser anterior ao dia de hoje"
    Wait Until Element Is Visible    ${event.Invalid_pop_up_message}
    Set Focus To Element    ${event.Invalid_pop_up_message}
    Capture Page Screenshot

Então o usuário é redirecionado para a tela de Inicial os Eventos
    Sleep    1
    Wait Until Element Is Visible    ${event.Img_home_volunter}    10

Então o usuário redirecionado para a tela de Todos os Eventos
    Sleep    5
    Wait Until Element Is Visible    ${event.Title_page_all_events}    10

Então Salvar a Avaliação
    Capture Page Screenshot
    Set Focus To Element    ${event.Button_review_save}
    Click Button    ${event.Button_review_save}


