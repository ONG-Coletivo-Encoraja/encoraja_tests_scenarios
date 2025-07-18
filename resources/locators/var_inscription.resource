*** Settings ***
Resource    ../main.resource
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
