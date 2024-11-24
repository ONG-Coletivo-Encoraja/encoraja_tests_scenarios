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

TC001 - Administrador cadastra evento pendente no site.
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos
    Quando clicar no menu no botão Criar Evento
    E preencher os campos do formulário “Cadastrar evento”
    Quando clicar no botão “Salvar”
    Então o usuário redirecionado para a tela de Todos os Eventos
    E o novo evento será exibido na listagem de Todos os eventos com o status de pendente

# TC002 - Administrador cadastra evento aprovado no site.
#     Dado que eu esteja logado no sistema como Administrador
#     E acesse o menu lateral Eventos > Cadastrar Evento
#     E preencher os campos do formulário “Cadastrar evento”
#     E selecionar qualquer usuário do tipo voluntário (cadastrado no sistema e que esteja ativo) como “Voluntário responsável”
#     E seleciona o Status “Aprovado”
#     Quando clicar no botão “Criar evento” 
#     Então o sistema exibe uma mensagem de confirmação
#     E após confirmada o evento é cadastrado no sistema
#     E o usuário redirecionado para a tela de Todos os Eventos
#     E o novo evento será exibido na listagem de Todos os eventos com o status de aprovado

# TC002 - Administrador cadastra evento com dados inválidos no site.
#     Dado que eu esteja logado no sistema como Administrador
#     E acesse o menu lateral Eventos > Cadastrar Evento
#     E preencher os campos do formulário “Cadastrar evento” com dados inválidos
#     Quando clicar no botão “Criar evento” 
#     Então o sistema exibe mensagens de erro abaixo dos campos que contém dados inválidos
#     E não permite que o evento seja salvos
# Critério de aceitação 1:
#     Como Administrador eu preciso Cadastrar os seguintes dados de eventos (pendentes e aprovados) no sistema:

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

# *** Test Cases ***

# TC001 - Administrador cadastra evento pendente no site.
# 	Dado que eu esteja logado no sistema como Administrador
# 	E acesse o menu lateral Eventos > Cadastrar Evento
#     E preencher os campos do formulário “Cadastrar evento”
#     E selecionar qualquer usuário do tipo voluntário (cadastrado no sistema e que esteja ativo) como “Voluntário responsável”
#     Quando clicar no botão “Criar evento” 
#     Então o sistema exibe uma mensagem de confirmação
#     E após confirmada o evento écadastrado no sistema
#     E o usuário redirecionado para a tela de Todos os Eventos
#     E o novo evento será exibido na listagem de Todos os eventos com o status de pendente

# TC002 - Administrador cadastra evento aprovado no site.
# 	Dado que eu esteja logado no sistema como Administrador
# 	E acesse o menu lateral Eventos > Cadastrar Evento
#     E preencher os campos do formulário “Cadastrar evento”
#     E selecionar qualquer usuário do tipo voluntário (cadastrado no sistema e que esteja ativo) como “Voluntário responsável”
#     E seleciona o Status “Aprovado”
#     Quando clicar no botão “Criar evento” 
#     Então o sistema exibe uma mensagem de confirmação
#     E após confirmada o evento é cadastrado no sistema
#     E o usuário redirecionado para a tela de Todos os Eventos
#     E o novo evento será exibido na listagem de Todos os eventos com o status de aprovado

# TC002 - Administrador cadastra evento com dados inválidos no site.
# 	Dado que eu esteja logado no sistema como Administrador
# 	E acesse o menu lateral Eventos > Cadastrar Evento
#     E preencher os campos do formulário “Cadastrar evento” com dados inválidos
#     Quando clicar no botão “Criar evento” 
#     Então o sistema exibe mensagens de erro abaixo dos campos que contém dados inválidos
#     E não permite que o evento seja salvos
