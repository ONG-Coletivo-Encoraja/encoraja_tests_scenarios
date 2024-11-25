*** Settings ***

Library     SeleniumLibrary
Library    OperatingSystem

### Data ###
Resource    Data/Geral.robot
Resource    Data/Dados_login.robot

### Shared ###
Resource    Shares/stup_teardown.robot


### Pages ###
Resource    Pages/Login.robot
Resource    Pages/Home.robot
Resource    Pages/Sidebar.robot
Resource    Pages/Create_events.robot
