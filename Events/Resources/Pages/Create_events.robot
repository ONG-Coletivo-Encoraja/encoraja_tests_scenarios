*** Settings ***
Resource    ../main.robot
Library    String


*** Variables ***
${DATE_FORMAT}    %d%m%Y

&{event}
#Elementos da tela
...    First_event=(//div[contains(.,'Próximos eventosWorkshop de Desenvolvimento Pessoal10:00:00presentialworkshopactive30/09/2024Responsável: Maria Oliveira')])[7]
...    Second_event=(//div[contains(.,'Próximos eventosCurso de Programação em PHP14:00:00hybridcoursepending04/11/2024Responsável: Maria Oliveira')])[7]
...    Third_event=(//div[contains(.,'Próximos eventosPalestra sobre Sustentabilidade19:00:00remotelecturefinished14/10/2024Responsável: Maria Oliveira')])[7]
...    Fourth_event=(//div[contains(.,'Próximos eventosOficina de Criatividade09:00:00presentialworkshopinactive30/11/2024Responsável: Maria Oliveira')])[7]
...    Fifth_event=(//div[contains(.,'Próximos eventosCurso Avançado de Marketing Digital13:00:00hybridcoursefinished19/11/2024Responsável: Maria Oliveira')])[7]
...    Event_screen=(//div[contains(.,'Próximos eventosWorkshop de Desenvolvimento Pessoal10:00:00presentialworkshopactive30/09/2024Responsável: Maria Oliveira')])[7]
...    Button_back=/html/body/div[3]/div[1]/div/div/div/div/div[1]/div[1]/div/button
...    Status_active=(//div[contains(.,'active')])[8]
...    Status_inactive=(//div[contains(.,'inactive')])[8]
...    Status_pending=(//div[contains(.,'pending')])[8]
...    Status_finished=(//div[contains(.,'finished')])[8]
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
    E acesse o menu lateral Eventos
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


