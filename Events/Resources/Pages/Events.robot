*** Settings ***
Resource    ../main.robot
Library    String


*** Variables ***
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

*** Keywords ***

Então o sistema exibe a lista de todos os eventos cadastrados no sistema (pendentes, aprovados e reprovados)
    Sleep    10
    Scroll Element Into View    ${event.First_event}
    Set Focus To Element    ${event.First_event}
    Wait Until Element Is Visible    ${event.Status_active}
    Capture Element Screenshot    ${event.First_event}

    Scroll Element Into View    ${event.Second_event}
    Set Focus To Element    ${event.Second_event}
    Wait Until Element Is Visible    ${event.Status_pending}
    Capture Element Screenshot    ${event.Second_event}

    Scroll Element Into View    ${event.Third_event}
    Set Focus To Element    ${event.Third_event}
    Wait Until Element Is Visible    ${event.Status_finished}
    Capture Element Screenshot    ${event.Third_event}

    Scroll Element Into View    ${event.Fourth_event}
    Set Focus To Element    ${event.Fourth_event}
    Wait Until Element Is Visible    ${event.Status_inactive}
    Capture Element Screenshot    ${event.Fourth_event}

    Scroll Element Into View    ${event.Fifth_event}
    Set Focus To Element    ${event.Fifth_event}
    Wait Until Element Is Visible    ${event.Status_finished}
    Capture Element Screenshot    ${event.Fifth_event}

E permite a visualização em tela cheia após selecionado
    Sleep    3
    Scroll Element Into View    ${event.First_event}
    Click Element    ${event.First_event}    
    Wait Until Element Is Visible    ${event.Event_screen}
    Scroll Element Into View    ${event.Button_back}
    Set Focus To Element    ${event.Button_back}
    Click Button    ${event.Button_back}
    Wait Until Element Is Visible    ${event.First_event}

Quando clicar no menu no botão Criar Evento
    Sleep    3
    Wait Until Element Is Visible    ${event.Button_create_events}
    Set Focus To Element    ${event.Button_create_events}
    Click Element    ${event.Button_create_events}
    Sleep   5
    Wait Until Element Is Visible    ${event.Title_page_create_events}    20
    

E preencher os campos do formulário “Cadastrar evento”
    Sleep    3
    Wait Until Element Is Visible    ${event.Input_event_name}
    Set Focus To Element    ${event.Input_event_name}
    Input Text    ${event.Input_event_name}    Evento Teste Robot

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
    Wait Until Element Is Visible    ${event.Select_event_modality}
    Set Focus To Element    ${event.Select_event_modality}  
    Sleep    1
    Press Keys    ${event.Select_event_modality}    ENTER 


Quando clicar no botão “Salvar” 
    Sleep    1
    Set Focus To Element   ${event.Button_save_event} 
    Click Element    ${event.Button_save_event}

Então o usuário redirecionado para a tela de Todos os Eventos
    Sleep    3
    Wait Until Element Is Visible    ${event.Title_page_all_events}

E o novo evento será exibido na listagem de Todos os eventos com o status de pendente
    Sleep    1
    Wait Until Element Is Visible    ${event.Input_search}
    Set Focus To Element    ${event.Input_search}
    Input Text    ${event.Input_search}    Evento Teste Robot
    Sleep    5
    Press Keys    ${event.Input_search}    ENTER 
    Sleep    5
    Capture Page Screenshot
