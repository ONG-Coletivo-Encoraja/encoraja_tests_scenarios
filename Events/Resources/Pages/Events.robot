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
...    Input_name_event=//input[contains(@placeholder,'Nome do evento')]
...    Input_data=//input[@aria-describedby=':r2:-form-item-description']
...    Input_time=//input[@name='time']
...    Input_description=//textarea[contains(@placeholder,'Descrição do evento')]
...    Input_modality=(//button[@type='button'][contains(.,'Selecione')])[1]
...    Input_type=(//button[@type='button'][contains(.,'Selecione')])[2]
...    Input_public=(//button[@type='button'][contains(.,'Selecione')])[2]
...    Total_vacancies=(//input[contains(@name,'vacancies')])[1]
...    Social_vacancies=(//input[contains(@name,'vacancies')])[2]
...    Regular_vacancies=(//input[contains(@name,'vacancies')])[3]
...    Material=//input[contains(@placeholder,'Material do evento')]
...    Area_interest=//input[contains(@placeholder,'Área de interesse')]
...    Price=//input[contains(@aria-describedby,':rf:-form-item-description')]
...    Workload=//input[contains(@aria-describedby,':rg:-form-item-description')]
...    Volunteer=//button[@type='button'][contains(.,'Selecione um voluntário')]
...    Status=(//button[@type='button'][contains(.,'Selecione')])[4]
...    Button_save_event=//button[contains(.,'Salvar')]

# # Lista de filtros 
# @{FILTERS}    Todos    Ativos    Inativos    Pendentes    Finalizados

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

# E permite a aplicação de filtros
#     Sleep    3
#     FOR    ${FILTER}    IN    @{FILTERS}
#         Scroll Element Into View    //button[@type='button'][contains(.,'Filtrar')]
#         Click Element    //button[@type='button'][contains(.,'Filtrar')]
#         Wait Until Element Is Visible    locator
#         Click Element    //button[@type='button'][contains(text(),'${FILTER}')]
#         # Aqui você pode adicionar verificações ou ações depois de aplicar o filtro
#         Sleep    3
#     END

E preencher os campos do formulário “Cadastrar evento”
    Sleep    3
    Set Focus To Element    ${event.Input_name_event}
    Input Text    ${event.Input_name_event}    Evento Teste
    Sleep    2

    Set Focus To Element    ${event.Input_data}
    Input Text    ${event.Input_data}    04-01-2025  
    Sleep    2

    Set Focus To Element    ${event.Input_time}
    Input Text    ${event.Input_time}    14:00  
    Sleep    2

    Set Focus To Element    ${event.Input_description}
    Input Text    ${event.Input_description}    Descrição do evento teste.
    Sleep    2

    Set Focus To Element    ${event.Input_modality}
    Click Element    ${event.Input_modality}
    Select From List By Label   ${event.Input_modality}    Presencial  
    Sleep    2
    # Wait Until Element Is Visible    //li[contains(text(),'Presencial')]  
    # Click Element    //li[contains(text(),'Presencial')]

    Set Focus To Element    ${event.Input_type}
    Select From List By Value    ${event.Input_type}    Palestra  
    Sleep    2

    Set Focus To Element    ${event.Input_public}
    Input Text    ${event.Input_public}    Mulheres
    Sleep    2

    Set Focus To Element    ${event.Total_vacancies}
    Input Text    ${event.Total_vacancies}    20
    Sleep    2

    Set Focus To Element    ${event.Social_vacancies}
    Input Text    ${event.Social_vacancies}    10
    Sleep    2

    Set Focus To Element    ${event.Regular_vacancies}
    Input Text    ${event.Regular_vacancies}    10
    Sleep    2

    Set Focus To Element    ${event.Material}
    Input Text    ${event.Material}    Tesoura
    Sleep    2

    Set Focus To Element    ${event.Area_interest}
    Input Text    ${event.Area_interest}    Emprendedorismo
    Sleep    2

    Set Focus To Element    ${event.Price}
    Input Text    ${event.Price}    15
    Sleep    2

    Set Focus To Element    ${event.Workload=}
    Input Text    ${event.Workload=}    2
    Sleep    2

    Set Focus To Element    ${event.Volunteer}
    Select From List By Value    ${event.Volunteer}    valdemar  
    Sleep    2

    Set Focus To Element    ${event.Status}
    Select From List By Value    ${event.Status}    Pendente  
    Sleep    2

    Set Focus To Element    ${event.Button_save_event}
    Click Button    ${event.Button_save_event}
    Sleep    2
