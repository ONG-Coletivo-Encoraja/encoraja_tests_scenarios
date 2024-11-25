*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
Suite Teardown    Fechar navegador

# Critério de aceitação 1:
#     Como Administrador eu preciso Cadastrar os seguintes dados de eventos (pendentes e aprovados) no sistema:
#
#     Nome do Evento (tipo texto)
#     Data do Evento (tipo data)
#     Horário do Evento
#     Descrição do Evento
#     Tipo do Evento
#     Status do Evento (Pendente, Ativo)
#     Modalidade do Evento
#     Total de vagas
#     Vagas sociais
#     Vagas gerais
#     Público Alvo
#     Materiais Necessários
#     Áreas de interesse
#     Preço
#     Carga Horária
#     Voluntário responsável 

*** Test Cases ***

TC001 - Administrador cadastra evento Pendente no site.
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos
    Quando clicar no menu no botão Criar Evento
    E preencher os campos do formulário “Cadastrar evento” com o status de pendente
    E clicar no botão “Salvar”
    Então o usuário redirecionado para a tela de Todos os Eventos
    E o novo evento será exibido na listagem de Todos os eventos

TC002 - Administrador cadastra evento Ativo no site.
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos
    Quando clicar no menu no botão Criar Evento
    E preencher os campos do formulário “Cadastrar evento” com o status de Ativo
    E clicar no botão “Salvar”
    Então o usuário redirecionado para a tela de Todos os Eventos
    E o novo evento será exibido na listagem de Todos os eventos

TC003 - Administrador cadastra evento com dados inválidos no site.
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos
    Quando clicar no menu no botão Criar Evento
    E preencher os campos do formulário “Cadastrar evento” com dados inválidos
    E clicar no botão “Salvar”
    Então o sistema exibe mensagem de erro "Falha no cadastro!A data do evento não pode ser anterior ao dia de hoje"
