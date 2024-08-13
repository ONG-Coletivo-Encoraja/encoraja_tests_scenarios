*** Settings ***
Library    ExcelLibrary
Library    String

*** Variables ***
&{arq}
#Elementos da tela
...   path=C:/Users/willian.meira/Downloads/teste.xlsx

*** Keywords *** 
Abrir Arquivo Excel
   Open Excel Document    C:/Users/willian.meira/Downloads/Robot.xlsx   sheet_name='Planilha1' cell_range='A1:B10'
   
    
    ${sheet}        Get List Sheet Names
    Log    ${sheet}
    
    ${linha}    Read Excel Cell    1    1
    Log    ${linha}
   
    Should Be Equal     ${linha}        ${sheet}
    Log To Console    ${linha}    
    Log To Console    ${sheet} 
    #Sleep    3

    