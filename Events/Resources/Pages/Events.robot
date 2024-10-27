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
...    Event_screen=(//div[contains(.,'Um workshop focado em habilidades de desenvolvimento pessoal.Materiais necessários: Materiais do workshop serão fornecidos.Valor do curso: R$ 50.00Ver InscritosEditar evento')])[8]
...    Button_back=//button[contains(.,'Voltar')]

# Lista de filtros 
@{FILTERS}    Todos    Ativos    Inativos    Pendentes    Finalizados

*** Keywords ***

Então o sistema exibe a lista de todos os eventos cadastrados no sistema (pendentes, aprovados e reprovados)
    Sleep    10
    Scroll Element Into View    ${event.First_event}
    Set Focus To Element    ${event.First_event}
    Capture Element Screenshot    ${event.First_event}

    Scroll Element Into View    ${event.Second_event}
    Set Focus To Element    ${event.Second_event}
    Capture Element Screenshot    ${event.Second_event}

    Scroll Element Into View    ${event.Third_event}
    Set Focus To Element    ${event.Third_event}
    Capture Element Screenshot    ${event.Third_event}

    Scroll Element Into View    ${event.Fourth_event}
    Set Focus To Element    ${event.Fourth_event}
    Capture Element Screenshot    ${event.Fourth_event}

    Scroll Element Into View    ${event.Fifth_event}
    Set Focus To Element    ${event.Fifth_event}
    Capture Element Screenshot    ${event.Fifth_event}

E permite a visualização em tela cheia após selecionado
    Sleep    3
    Scroll Element Into View    ${event.First_event}
    Click Element    ${event.First_event}    
    Wait Until Element Is Visible    ${event.Event_screen}
    Set Focus To Element    ${event.Event_screen}
    Scroll Element Into View    ${event.Button_back}
    Click Button    ${event.Button_back}
    Wait Until Element Is Visible    ${event.First_event}

E permite a aplicação de filtros
    Sleep    3
    FOR    ${FILTER}    IN    @{FILTERS}
        Scroll Element Into View    //button[@type='button'][contains(.,'Filtrar')]
        Click Element    //button[@type='button'][contains(.,'Filtrar')]
        Wait Until Element Is Visible    locator
        Click Element    //button[@type='button'][contains(text(),'${FILTER}')]
        # Aqui você pode adicionar verificações ou ações depois de aplicar o filtro
        Sleep    3
    END

E permite que o usuário efetue busca de evento por meio de qualquer um dos dados cadastrados (excessão do status)
    Sleep    3
