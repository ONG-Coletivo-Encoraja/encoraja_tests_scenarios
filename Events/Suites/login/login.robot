*** Settings ***
Resource    ../../../Events/Resources/main.robot
Test Setup

*** Test Cases ***

Dado que eu esteja Logado com o usuário Administrador
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
    
Dado que eu esteja Logado com o usuário Voluntário
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário

Dado que eu esteja Logado com o usuário Benefiário
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário