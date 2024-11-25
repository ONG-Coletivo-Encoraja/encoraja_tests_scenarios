*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
Suite Teardown    Fechar navegador

# Funcionalidade: "Cadastrar Eventos"
# Critério de aceitação 1:
#     Como Voluntário eu preciso Cadastrar os seguintes dados de eventos (pendentes) no sistema:

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