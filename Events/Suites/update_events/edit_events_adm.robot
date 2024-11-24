*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Test Setup       Acessar o Site Web ONG Coletivo Encoraja
Test Teardown    Fechar navegador

# Fucionalidade: "Editar Eventos"
#     Critério de aceitação 1:
#         Como Administrador eu preciso Editar os seguintes dados de eventos (aprovados, pendentes e reprovados) no sistema:
#         Nome do Evento (tipo texto)
#         Data do Evento (tipo data)
#         Horário do Evento
#         Descrição do Evento
#         Tipo do Evento
#         Status do Evento (Pendente, Ativo)
#         Modalidade do Evento
#         Total de vagas
#         Vagas sociais
#         Vagas gerais
#         Público Alvo
#         Materiais Necessários
#         Áreas de interesse
#         Preço
#         Carga Horária
#         Voluntário responsável 

*** Test Cases ***

TC001 - Administrador edita Status do Evento de Ativo para Finalizado
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos
    

# TC001 - Administrador edita Status do Evento de Pendente para Aprovado.
#     Dado que eu esteja logado no sistema como Administrador	
#     E acesse o menu lateral Eventos
#     Quando clicar no botão Editar Evento de um Evento cadastrado como Pendente
#     E alterar o Status de Pendente para Aprovado
#     E clicar no botão Salvar
#     Então o sistema deverá exibir o evento com o status Aprovado na listagem de Todos os eventos para todos os usuários

# TC002 - Administrador edita Status do Evento de Pendente para Reprovado.
#     Dado que eu esteja logado no sistema como Administrador	
#     E acesse o menu lateral Eventos
#     Quando clicar no botão Editar Evento de um Evento cadastrado como Pendente
#     E alterar o Status de Pendente para Reprovado
#     E clicar no botão Salvar
#     Então o sistema deverá exibir o evento com o status Reprovado na listagem de Todos os eventos para o usuário Voluntário e Administrador

# TC003 - Administrador edita Status do Evento de Aprovado para Reprovado.
#     Dado que eu esteja logado no sistema como Administrador	
#     E acesse o menu lateral Eventos
#     Quando clicar no botão Editar Evento de um Evento cadastrado como Pendente
#     E alterar o Status de Aprovado para Reprovado
#     E clicar no botão Salvar
#     Então o sistema deverá exibir o evento com o status Reprovado na listagem de Todos os eventos para o usuário Voluntário e Administrador

# TC004 - Administrador edita Status do Evento de Reprovado para Aprovado.
#     Dado que eu esteja logado no sistema como Administrador	
#     E acesse o menu lateral Eventos
#     Quando clicar no botão Editar Evento de um Evento cadastrado como Pendente
#     E alterar o Status de Reprovado para Aprovado
#     E clicar no botão Salvar
#     Então o sistema deverá exibir o evento com o status Aprovado na listagem de Todos os eventos para todos os usuários

# TC005 - Administrador editar demais campos (Nome do Evento (tipo texto) | Descrição do Evento | Tipo do Evento | Modalidade do Evento |
# ...    Público Alvo | Materiais Necessários | Áreas de interesse | Data do Evento (tipo data) | Horário do Evento | Preço | Carga Horária |
# ...    Voluntário responsável) do evento com dados válidos.
#     Dado que eu esteja logado no sistema como Administrador	
#     E acesse o menu lateral Eventos
#     Quando clicar no botão Editar Evento de um Evento
#     E alterar os dados de algum dos demais campos
#     E clicar no botão Salvar
#     Então o sistema deverá exibir as alterações do evento na tela de eventos para os usuários de acordo com o tipo de acesso

# TC006 - Administrador editar demais campos (Nome do Evento (tipo texto) | Descrição do Evento | Tipo do Evento | Modalidade do Evento |
# ...    Público Alvo | Materiais Necessários | Áreas de interesse | Data do Evento (tipo data) | Horário do Evento | Preço | Carga Horária |
# ...    Voluntário responsável) do evento com dados inválidos.
#     Dado que eu esteja logado no sistema como Administrador	
#     E acesse o menu lateral Eventos
#     Quando clicar no botão Editar Evento de um Evento
#     E alterar o texto de algum dos demais campos utilizando dados inválidos
#     E clicar no botão Salvar
#     Então o sistema deverá mensagem de erro abaixo dos campos que foram preenchidos com dados incorretos
