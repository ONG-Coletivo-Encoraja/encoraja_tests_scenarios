*** Settings ***
Resource    ../main.resource
Library    String

*** Variables ***
&{sidebar}
#Elementos da tela
# ______________________________ #
# ...    MENU - ADM - VOLUNTEER - BENEFICIARIO  ... #   
...    Button_events=(//button[contains(@data-state,'closed')])[3]
...    Button_events_beneficiary=(//button[contains(@data-state,'closed')])[4]
...    Button_inscriptions_adm=(//button[contains(@data-state,'closed')])[4]