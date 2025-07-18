*** Settings ***
Resource    ../main.robot
Resource    ../../../Events/Resources/Pages/Create_events.robot
Library    String

*** Variables ***
&{inscription}
#Elementos da tela
...    Title_page_all_events=//div[@class='flex justify-between flex-wrap gap-3'][contains(.,'Eventos cadastradosFiltrar')]
...    Card_event=//div[@class='border bg-card text-card-foreground shadow w-full rounded-xl min-h-[350px] max-h-[500px]'][contains(.,'Próximos eventosEvento Teste Robot Pendente Voluntário14:00:00RemotoPalestraAtivo24/11/2024Responsável: Maria OliveiraDescrição Evento Teste Robot Voluntário')]
...    Title_event_details=//h3[@class='font-bold tracking-tight text-[#702054] text-[24px]'][contains(.,'Evento Teste Robot Pendente Voluntário')]
...    Button_inscription=//button[@class='inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2'][contains(.,'Se inscrever')]
...    Mensage_inscription_confirmation=//div[@role='alertdialog'][contains(.,'InscriçãoVocê deseja se inscrever no evento Evento Teste Robot Pendente Voluntário, que ocorrerá no dia 2024-11-25 às 14:00:00?CancelarSim')]
...    Button_confirm=//button[@type='button'][contains(.,'Sim')]
...    Mensage_inscription_sucess=(//div[@class='text-sm opacity-90'][contains(.,'Inscrição realizada com sucesso!')])[2]
...    Filter_inscriptions_adm=//button[@type='button'][contains(.,'Filtrar')]
...    Button_alter_status=(//button[contains(.,'Alterar Status')])[2]
...    Pop_up_alter_status=//div[@role='alertdialog'][contains(.,'Cancelar inscrição?Selecione o novo status do evento: Evento Teste Robot Pendente Voluntário?PendenteCancelarSim')]
...    Button_status_inscription=(//button[@type='button'][contains(.,'Pendente')])[2]
...    Button_show_inscriptions=(//button[contains(@class,'inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2')])[2]
...    Button_checkbox=//input[contains(@type,'checkbox')]
...    Button_save_list=//button[@class='inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2'][contains(.,'Salvar')]

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

    