*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Resource    ../../Resources/Pages/Create_events.robot
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
Suite Teardown    Fechar navegador


*** Test Cases ***

TC001 - Administrador aprova evento Pendente proposto por Voluntário no site.
    Dado que eu esteja logado no sistema como Administrador
    E acesse o menu lateral Eventos
    Quando selecionar o evento para visualização
    E clicar no botão "Editar evento"
    E alterar o Status de Pendente para Ativo
    E clicar no botão “Salvar”
    Então o usuário redirecionado para a tela de Todos os Eventos
    E o evento será apresentado com o Status "Ativo"