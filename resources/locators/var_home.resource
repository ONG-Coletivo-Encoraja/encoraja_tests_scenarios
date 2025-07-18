*** Settings ***
Resource    ../main.resource
Library    String

*** Variables ***
&{home}
#Elementos da tela
...    Logged_in_screen=//img[@src='/img/girlshome.png']
...    User_name_adm=//label[@class='text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-white mx-4 flex items-center justify-between'][contains(.,'João da Silva')]
...    User_name_volunteer=//label[@class='text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-white mx-4 flex items-center justify-between'][contains(.,'Maria Oliveira')]
...    User_name_beneficiary=//label[@class='text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 text-white mx-4 flex items-center justify-between'][contains(.,'Ana Oliveira')]
