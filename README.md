# Site WEB Encoraja 
### encoraja_tests_scenarios

Esse repositório contém o desenvolvimento de testes de integração automatizados do Projeto Integrador do Tecnólogo em Análise e Desenvolvimento de Sistemas, para o centro universitário Cesumar. 

A Organização não Governamental (ONG) **Coletivo Encoraja** apoia mulheres em situação de vulnerabilidade. Atualmente, a divulgação das suas atividades é feita somente através de redes sociais e o cadastro no Google Forms. Este projeto visa aprimorar o marketing do Coletivo Encoraja e desenvolver uma aplicação web para centralizar informações e serviços. A plataforma facilitará cadastros, elaboração de relatórios e gerenciamento de eventos e projetos. O objetivo é criar uma ferramenta digital integrada que amplie o alcance e o impacto da ONG, ajudando mais mulheres a obter apoio e segurança.


## Rodando o projeto
- ```Installar VsCode```
- ```Installar Python```: interessante que seja baixado na pasta C do seu computador
- ```Installar ChromeDriver```: ChromeDriver Latest Releases Versions Downloads - Chrome for Testing availability (getwebdriver.com) 
É um ambiente controlado de testes e deve ser instalado na mesma pasta do python.
  https://storage.googleapis.com/chrome-for-testing-public/129.0.6668.100/win64/chromedriver-win64.zip

- ```Installar as seguintes extensões no Vscode```:
   <br>
  ![imagem (1)](https://github.com/user-attachments/assets/6eb91439-6186-431a-9f1e-334f3bcd2887)

- ```git```: installar git para versionamento de código: https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.1/Git-2.47.0-64-bit.exe
- - ```git clone https://github.com/allstrategy-git/automacao-testes-plano.git```: no git clonar o repositório de testes em uma pasta local do seu computador interessante que seja na pasta C
- ```git```: dentro da pasta do projeto logar no terminal do git bash usando o nome e o email cadastrados no GitHub: 
    * git config --global user.name "Nome de Usuário"
    * git config --global user.email "email@email.com"

- ```pip install robotframework```: para instalação do robot - rodar no bash
- ```pip install --upgrade robotframework-seleniumlibrary```: para baixar a biblioteca do sellenium - rodar no bash

## Comandos para rodar os testes quando necessário
- ```robot -d Results_NOMEDAPASTA CAMINHODOARQUIVO\*```: para rodar um arquivo da suites de testes
- ```robot -d Results_NOMEDAPASTASUITES CAMINHODAPASTASUITES\*```: para rodar uma pasta da suites de testes

## URLs de Documentações online
- ```https://robotframework.org/robotframework/latest/libraries/BuiltIn.html```: Biblioteca Keywords
- ```https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html```: Biblioteca selenium
- ```https://forum.robotframework.org/```: Fórum Robot Framework

- ```https://docs.robotframework.org/docs/different_libraries/overview```: Diferentes bibliotecas


## Equipe

<div style="text-align: center;">
    <table style="margin: 0 auto;">
        <tr>
            <td style="text-align:center;">
                <img src="https://media.licdn.com/dms/image/D4D03AQGjkE_TgqbwKQ/profile-displayphoto-shrink_200_200/0/1718147518615?e=1724889600&v=beta&t=dCYM0msqZWamQgfJAzBAYYFhhYgRl8zxERn10DlclqY" alt="Andre">
                <br>
                Andre
            </td>
            <td style="text-align:center;">
                <img src="https://media.licdn.com/dms/image/D4D03AQHr7w0DU_lM6A/profile-displayphoto-shrink_200_200/0/1710427543029?e=1724889600&v=beta&t=-ikLLjJ1mI2aTjpnJ_AMIrOtaeidvhuCuB5RopXbFLo" alt="Juliana">
                <br>
                Juliana
            </td>
            <td style="text-align:center;">
                <img src="https://media.licdn.com/dms/image/D4E03AQHYW0e702e5IQ/profile-displayphoto-shrink_200_200/0/1711017086059?e=1724889600&v=beta&t=fKGDdxVltlIu3ENXcmUg7Zg9b1NxvO0dICFFuYeImPQ" alt="Maria">
                <br>
                Maria
            </td>
        </tr>
    </table>
</div>

