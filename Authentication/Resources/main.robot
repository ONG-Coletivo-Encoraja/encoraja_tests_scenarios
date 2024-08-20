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
Resource  Pages\delete_events.robot
Resource  Pages\read_events.robot
Resource  Pages\update_events.robot

