*** Settings ***
Resource    ../main.robot
Library    String

*** Variables ***
&{login}
#Elementos da tela
...    Logo_encoraja=//img[contains(@alt,'Logo')]
...    Button_login=(//button[contains(@type,'button')])[2]
...    Text_user=//input[contains(@aria-describedby,':R6fndt7:-form-item-description')]
...    Text_password=//input[contains(@type,'password')]
...    Button_enter=//button[@class='inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-[#702054] text-primary-foreground hover:bg-[#b03e88] h-10 px-4 py-2 mt-4'][contains(.,'Entrar')]
...    Logged_in_screen=//img[@src='/img/girlshome.png']