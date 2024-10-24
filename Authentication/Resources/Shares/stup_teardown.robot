*** Settings ***

Resource    ../main.robot

*** Keywords ***

Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
    Dado que o navergador esteja aberto no site da ONG Coletivo Encoraja
    E clicou no botão Login
    E fazer Login com Usuário Administrador

Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
    Dado que o navergador esteja aberto no site da ONG Coletivo Encoraja
    E clicou no botão Login
    E fazer Login com Usuário Voluntário

Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário
    Dado que o navergador esteja aberto no site da ONG Coletivo Encoraja
    E clicou no botão Login
    E fazer Login com Usuário Benefiário