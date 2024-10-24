*** Settings ***
Resource    ../../../Authentication/Resources/main.robot
Test Setup

*** Test Cases ***

TC001 - Dado que eu esteja Logado com o usuário Administrador
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
    
TC002 - Dado que eu esteja Logado com o usuário Voluntário
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário

TC003 - Dado que eu esteja Logado com o usuário Benefiário
    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário