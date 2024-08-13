*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Cadastrar Eventos"
Critério de aceitação 1:
    Como Voluntário eu preciso Cadastrar os seguintes dados de eventos (pendentes) no sistema:

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

TC001 - Voluntário cadastra evento pendente no site.
	Dado que eu esteja logado no sistema como Voluntário
	E acesse o menu lateral Eventos > Cadastrar Evento
    E preencher os campos do formulário “Cadastrar evento”
    E selecionar meu usuário como “Voluntário responsável”
    Mas não consigo selecionar outros usuários no campo “Voluntário responsável”
    E selecionar o status "Pendente"
    Mas não consigo selecionar outros Status para o Evento
    Quando clicar no botão “Criar evento” 
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o evento écadastrado no sistema
    E o usuário redirecionado para a tela de Todos os Eventos
    E o novo evento será exibido na listagem de Todos os eventos com o status de pendente

TC002 - Voluntário cadastra evento pendente com dados inválidos no site.
	Dado que eu esteja logado no sistema como Voluntário
	E acesse o menu lateral Eventos > Cadastrar Evento
    E preencher os campos do formulário “Cadastrar evento” com dados inválidos
    Quando clicar no botão “Criar evento” 
    Então o sistema exibe mensagens de erro abaixo dos campos que contém dados inválidos
    E não permite que o evento seja salvo
