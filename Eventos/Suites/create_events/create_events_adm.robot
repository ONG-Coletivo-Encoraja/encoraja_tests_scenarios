*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Cadastrar Eventos"
Critério de aceitação 1:
    Como Administrador eu preciso Cadastrar os seguintes dados de eventos (inativos e ativos) no sistema:

    Nome do Evento (tipo texto)
    Data do Evento (tipo data)
    Horário do Evento
    Descrição do Evento
    Tipo do Evento
    Status do Evento (Pendente, Ativo)
    Modalidade do Evento
    Total de vagas
    Vagas sociais
    Vagas gerais
    Público Alvo
    Materiais Necessários
    Áreas de interesse
    Preço
    Carga Horária
    Voluntário responsável 

*** Test Cases ***

TC001 - Administrador cadastra evento pendente no site.
	Dado que eu esteja logado no sistema como Administrador
	E acesse o menu lateral Eventos > Cadastrar Evento
    Quando preencher os campos do formulário “Cadastrar evento”
    E selecionar qualquer usuário do tipo voluntário (cadastrado no sistema e que esteja ativo) como “Voluntário responsável”
    E clicar no botão “Criar evento” 
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o evento écadastrado no sistema
    E o usuário redirecionado para a tela de Todos os Eventos
    E o novo evento será exibido na listagem de Todos os eventos com o status de pendente

TC002 - Administrador cadastra evento ativo no site.
	Dado que eu esteja logado no sistema como Administrador
	E acesse o menu lateral Eventos > Cadastrar Evento
    Quando preencher os campos do formulário “Cadastrar evento”
    E selecionar qualquer usuário do tipo voluntário (cadastrado no sistema e que esteja ativo) como “Voluntário responsável”
    E seleciona o Status “Ativo”
    E clicar no botão “Criar evento” 
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o evento é cadastrado no sistema
    E o usuário redirecionado para a tela de Todos os Eventos
    E o novo evento será exibido na listagem de Todos os eventos com o status de pendente

TC002 - Administrador cadastra evento com dados inválidos no site.
	Dado que eu esteja logado no sistema como Administrador
	E acesse o menu lateral Eventos > Cadastrar Evento
    Quando preencher os campos do formulário “Cadastrar evento” com dados inválidos
    E clicar no botão “Criar evento” 
    Então o sistema exibe mensagens de erro abaixo dos campos que contém dados inválidos
    E não permite que o evento seja salvo
