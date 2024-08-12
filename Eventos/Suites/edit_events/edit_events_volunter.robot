*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos/Resources/main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Fucionalidade: "Editar Eventos"
    Critério de aceitação 1:
        Como Voluntário eu preciso Editar os seguintes dados de eventos (aprovados e pendentes) no sistema:
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

TC001 - Administrador editar demais campos do evento com dados válidos.
    Dado que eu esteja logado no sistema como Voluntário	
    E acesse o menu lateral Eventos
    Quando clicar no botão Editar Evento de um Evento (aprovado ou pendente)
    E alterar algum dos campos
    Mas não consegue alterar o campo de Status e Voluntário Responsável
    E clicar no botão Salvar
    Então o sistema deverá exibir as alterações do evento na tela de eventos para os usuários de acordo com o tipo de acesso

TC002 - Administrador editar demais campos do evento com dados inválidos.
    Dado que eu esteja logado no sistema como Voluntário	
    E acesse o menu lateral Eventos
    Quando clicar no botão Editar Evento de um Evento (aprovado ou pendente)
    E alterar algum dos campos utilizando dados inválidos
    Mas não consegue alterar o campo de Status e Voluntário Responsável
    E clicar no botão Salvar
    Então o sistema deverá mensagem de erro abaixo dos campos que foram preenchidos com dados incorretos
