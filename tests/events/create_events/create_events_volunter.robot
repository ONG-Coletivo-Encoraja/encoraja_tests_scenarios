*** Settings ***
Resource     ../../../resources/main.resource
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
Suite Teardown    Fechar navegador

*** Test Cases ***

TC001 - Voluntário cadastra evento pendente no site.
	Dado que eu esteja logado no sistema como Voluntário
    E acesse o menu lateral Eventos
    Quando o Voluntário clicar no menu no botão Criar Evento
    E o Voluntário preencher os campos do formulário “Cadastrar evento” com o status de pendente
    E clicar no botão “Salvar”
    Então o usuário é redirecionado para a tela de Inicial os Eventos
    E na tela de Eventos o novo evento será exibido na listagem de Todos os eventos

TC002 - Voluntário cadastra evento pendente com dados inválidos no site.
	Dado que eu esteja logado no sistema como Voluntário
	E acesse o menu lateral Eventos
	Quando o Voluntário clicar no menu no botão Criar Evento
    E o Voluntário preencher os campos do formulário “Cadastrar evento” com dados inválidos
    E clicar no botão “Salvar”
    Então o sistema exibe mensagem de erro "Falha no cadastro!A data do evento não pode ser anterior ao dia de hoje"