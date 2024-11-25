*** Settings ***
Library    BuiltIn
Resource     ../../Main_event_flow/Resources/main.robot
Resource    ../../Events/Resources/Shares/stup_teardown.robot
Resource    ../../Inscription/Resources/Pages/Inscription.robot 
Resource    ../../Inscription/Resources/Pages/Sidebar.robot
Test Setup    Acessar o Site Web ONG Coletivo Encoraja
Test Teardown    Fechar navegador

*** Test Cases ***

TC001 - Voluntário cadastra evento pendente no site.
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
	Dado que eu esteja logado no sistema como Voluntário
    E acesse o menu lateral Eventos 2
    Quando o Voluntário clicar no menu no botão Criar Evento
    E o Voluntário preencher os campos do formulário “Cadastrar evento” com o status de pendente
    E clicar no botão “Salvar”
    Então o usuário é redirecionado para a tela de Inicial os Eventos
    E na tela de Eventos o novo evento será exibido na listagem de Todos os eventos

TC002 - Administrador aprova evento Pendente proposto por Voluntário no site.
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos 2
    Quando selecionar o evento para visualização
    E clicar no botão "Editar evento"
    E alterar o Status de Pendente para Ativo
    E clicar no botão “Salvar”
    Então o usuário redirecionado para a tela de Todos os Eventos
    E o evento será apresentado com o Status "Ativo"

TC003 - Beneficiário me inscrevo em um evento ativo.
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário
    Dado que eu esteja logado no sistema como Benefiário
    E que o Beneficiário acesse o menu lateral Eventos 2
    E selecionar o novo evento criado
    Quando clicar no botão "Me Inscrever" 
    Então o sistema exibe uma mensagem de confirmação que após confirmada inscrição é efetuada com sucesso

TC004 - Administrador aprova inscrição de Beneficiário no evento ativo.
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
    Dado que eu esteja logado no sistema como Administrador
    E que o Administrador acesse o menu lateral Inscrições
    E filtre apenas as inscrições Pendentes
    Quando clicar no botão "Alterar status" 
    Então o sistema exibe uma caixa de PopUp para alteração de Status ou cancelamento da inscrição

TC005 - Administrador edita Status do Evento de Ativo para Finalizado
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos 2
    Quando selecionar o evento Ativo para visualização
    E clicar no botão "Editar evento"
    E alterar o Status de Ativo para Finalizado
    E clicar no botão “Salvar”
    Então o usuário redirecionado para a tela de Todos os Eventos
    E o evento será apresentado com o Status "Finalizado"

TC008 - Voluntário preenche lista de presença do evento
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
    Dado que eu esteja logado no sistema como Voluntário
    E acesse o menu lateral Eventos 2
    Quando selecionar o evento para visualização de inscrições
    E clicar no botão "Ver inscritos"
    E selecionar a checkbox de presença
    Então clicar em Salvar

TC007 - Beneficiário avalia o evento finalizado que ele participou.
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário
    Dado que eu esteja logado no sistema como Benefiário
    E que o Beneficiário acesse o menu lateral Eventos 2
    Quando selecionar o evento Finalizado para visualização
    E clicar no botão "Deixe aqui a sua avaliação!"
    E avaliar o evento
    Então Salvar a Avaliação



