*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
Suite Teardown    Fechar navegador

# Fucionalidade: "Editar Eventos"
#     Critério de aceitação 1:
#         Como Voluntário eu preciso Editar os seguintes dados de eventos (aprovados e pendentes) no sistema:
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

# TC001 - Voluntário preenche lista de presença do evento
#     Dado que eu esteja logado no sistema como Voluntário  
#     E acesse o menu lateral Eventos
#     Quando selecionar o evento para visualização 
#     E clicar no botão "Ver inscritos"
