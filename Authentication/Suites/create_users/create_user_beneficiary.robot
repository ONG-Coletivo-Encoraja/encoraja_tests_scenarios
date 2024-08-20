*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Cadastrar usuário"
Critério de aceitação 1:
    Como usuário não logado eu preciso conseguir me Cadastrar no sistema como Benefiário para efetuar Login.

*** Test Cases ***

TC001 - Usuário não logado se cadastra no site.
	Dado que eu esteja na HomePage do site
	E acesse o menu lateral Cadastrar usuário
    E preencher os campos do formulário “Cadastrar usuário”
    Quando clicar no botão “Salvar” 
    Então o sistema redireciona usuário não logado para a tela de Login
    E exibe uma mensagem de confirmação do cadastro