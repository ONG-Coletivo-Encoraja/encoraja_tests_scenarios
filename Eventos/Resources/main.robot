*** Settings ***

Library  SeleniumLibrary
Library  OperatingSystem
Library  ExcelLibrary


### Data ###
Resource  Data/Geral.robot
Resource  Data/Dados_login.robot

###  Shared ###
# Resource  Shares/stup_teardown.robot

### Page ###
Resource  Pages\create_events.robot



