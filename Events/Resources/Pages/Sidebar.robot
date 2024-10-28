*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{sidebar}
#Elementos da tela
# ______________________________ #
# ...    MENU - EVENTOS - ADM    ... #   
...    Button_events=//button[@class='flex flex-row items-center p-2 rounded-lg hover-bg-zinc-100 w-full justify-between hover:bg-zinc-100 '][contains(.,'Eventos')]
...    Button_all_events=(//a[@href='/all-events'])[1]
...    Button_create_events=//a[@href='/register-event']
...    Button_all_inscriptions=//a[@href='/all-inscriptions']
...    Title_page_all_events=//h1[@class='font-bold leading-none tracking-tight text-[#702054] text-[30px]'][contains(.,'Eventos cadastrados')]
...    Title_page_create_events=//h3[@class='font-bold tracking-tight text-[#702054] text-[24px]'][contains(.,'Cadastro de evento')]
...    Title_page_all_inscriptions=//h2[@class='font-bold leading-none tracking-tight text-[#702054] text-[24px]'][contains(.,'Todas as Inscrições')]
  
*** Keywords ***
Quando acessar o menu lateral Eventos > Todos os eventos
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events}
    Click Button    ${sidebar.Button_events}
    Sleep    3
    Wait Until Element Is Visible   ${sidebar.Button_all_events}   20
    Set Focus To Element    ${sidebar.Button_all_events}
    Click Element   ${sidebar.Button_all_events}
    Sleep   5
    Wait Until Element Is Visible    ${sidebar.Title_page_all_events}    20
    

E acesse o menu lateral Eventos > Cadastrar Evento
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_events}
    Click Button    ${sidebar.Button_events}
    Sleep    3
    Wait Until Element Is Visible    ${sidebar.Button_create_events}
    Set Focus To Element    ${sidebar.Button_create_events}
    Click Element    ${sidebar.Button_create_events}
    Sleep   5
    Wait Until Element Is Visible    ${sidebar.Title_page_create_events}    20
    

