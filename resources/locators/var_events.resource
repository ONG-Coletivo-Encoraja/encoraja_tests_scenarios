*** Settings ***
Resource    ../../main.resource

*** Variables ***
${DATE_FORMAT}    %d%m%Y

&{create_event}
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
