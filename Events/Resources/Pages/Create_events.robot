*** Settings ***
Resource    ../main.robot
Resource    ../../../Inscription/Resources/Pages/Sidebar.robot
Library    String


*** Variables ***
${DATE_FORMAT}    %d%m%Y

&{event}
#Elementos da tela

    # Formulário de cadastro de evento
...    Button_create_events=//button[@class='items-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2 ml-2 flex justify-around w-32'][contains(.,'Criar')]
...    Button_create_events_volunter=//button[@class='items-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2 ml-2 flex justify-around'][contains(.,'Criar')]
...    Title_page_all_events=//h1[@class='font-bold leading-none tracking-tight text-[#702054] text-[24px]'][contains(.,'Eventos cadastrados')]
...    Title_page_create_events=//div[@class='flex flex-col space-y-1.5 p-6'][contains(.,'Cadastro de evento')]
...    Input_event_name=//input[contains(@placeholder,'Nome do evento')]
...    Input_event_data=//input[contains(@type,'date')]
...    Input_event_time=//input[contains(@name,'time')]
...    Input_event_description=//textarea[contains(@name,'description')]
...    Select_event_modality=(//button[@type='button'][contains(.,'Selecione')])[1]
...    Select_event_type=(//button[@type='button'][contains(.,'Selecione')])[1]
...    Input_event_public=//input[contains(@placeholder,'Público alvo')]
...    Input_event_total_vacancies=(//input[contains(@type,'number')])[1]
...    Input_event_social_vacancies=(//input[contains(@type,'number')])[2]
...    Input_event_regular_vacancies=(//input[contains(@type,'number')])[3]
...    Input_event_material=//input[contains(@placeholder,'Material do evento')]
...    Input_event_interest_area=//input[contains(@placeholder,'Área de interesse')]
...    Input_event_price=(//input[contains(@type,'number')])[4]
...    Input_event_hour=(//input[contains(@type,'number')])[5]
...    Select_event_volunter=(//button[@type='button'][contains(.,'Selecione')])[1]
...    Select_event_status=(//button[@type='button'][contains(.,'Selecione')])[1]
...    Button_save_event=//button[contains(.,'Salvar')]

...    Input_search=//input[contains(@placeholder,'Pesquisar...')]
...    Invalid_pop_up_message=(//li[@role='status'][contains(.,'Falha no cadastro!A data do evento não pode ser anterior ao dia de hoje.')])[2]
...    Img_home_volunter=//img[@src='/img/girlshome.png']
...    Event_details=(//div[@class='border bg-card text-card-foreground shadow w-full rounded-xl min-h-[350px] max-h-[500px]'][contains(.,'Próximos eventosEvento Teste Robot Pendente Voluntário14:00:00RemotoPalestraPendente24/11/2024Responsável: Maria OliveiraDescrição Evento Teste Robot Voluntário')])[1]
...    Event_details_finish=//div[@class='border bg-card text-card-foreground shadow w-full rounded-xl min-h-[350px] max-h-[500px]'][contains(.,'Próximos eventosEvento Teste Robot Pendente Voluntário14:00:00RemotoPalestraFinalizado24/11/2024Responsável: Maria OliveiraDescrição Evento Teste Robot Voluntário')]
...    Event_details_active=//div[@class='border bg-card text-card-foreground shadow w-full rounded-xl min-h-[350px] max-h-[500px]'][contains(.,'Próximos eventosEvento Teste Robot Pendente Voluntário14:00:00RemotoPalestraAtivo24/11/2024Responsável: Maria OliveiraDescrição Evento Teste Robot Voluntário')]
...    Button_edit_event=//button[contains(.,'Editar evento')]
...    Status_event_active_card=(//div[contains(.,'Ativo')])[11]
...    Status_event_active=//button[@type='button'][contains(.,'Ativo')]
...    Status_event_pending=//button[@type='button'][contains(.,'Pendente')]
...    Status_event_finish=(//div[contains(.,'Finalizado')])[11]
...    Button_review=//button[@class='inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2'][contains(.,'Deixe aqui a sua avaliação!')]
...    Pop_up_review=//div[@role='dialog'][contains(.,'Deixe sua AvaliaçãoSua opinião é muito importante para nós. Preencha os campos abaixo:De forma geral, como avalia as atividades ofertadas?1 Star2 Stars3 Stars4 Stars5 StarsEmptyVocê se sentiu acolhida em nosso espaço?SimNãoVocê recomendaria nosso espaço?SimNãoGostaria de deixar um depoimento?SalvarClose')]
...    Button_review_stars=(//label[contains(@class,'css-dqr9h-MuiRating-label')])[5]
...    Button_review_3=(//button[contains(@type,'button')])[3]
...    Button_review_5=(//button[contains(@type,'button')])[5]
...    Input_review_text=//textarea[contains(@class,'flex min-h-[60px] bg-transparent text-sm shadow-sm placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:cursor-not-allowed disabled:opacity-50 border border-[#F69053] p-4 rounded-md h-20 w-[400px]')]
...    Button_review_save=//button[@class='inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2'][contains(.,'Salvar')]

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


