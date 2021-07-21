*** settings ***
#importando a biblioteca do Selenium - interagir com o Navegador
Library    SeleniumLibrary

*** Variables ***
${Mensagem}    MY ACCOUNT

*** Test Cases ***
Cenário: Cadastro de Cliente
    open browser    http://automationpractice.com/index.php    Chrome
#    Click Element    xpath=//a[@class='login']  
#Maximizar o Navegador
    Maximize Browser Window
#Definir um tempo máximo de espera
    Set Selenium Timeout    60    
#Clicando no Elemento
    Click Element    xpath=//a[@class='login']
#Interagir 
    Input Text    id=email_create    salete@gmail.com
    Click Element    id=SubmitCreate
    Wait Until Element is Visible    id=id_gender2
    Click Element    id=id_gender2
    Input Text    id=customer_firstname    Salete
    Input Text    id=customer_lastname    Tenorio
    Input Text    id=passwd    1Abc6
    Select From List By Value    id=days    20
    Select From List By Value    id=months    5
    Select From List By Value    id=years    2021
    Input Text    id=firstname    Salete
    Input Text    id=lastname    Tenorio
    Input Text    id=company    SIS
    Input Text    id=address1    Rua Salvador, 463 
    Input Text    id=address2    Bairro Cajuru
    Input Text    id=city    Curitiba
#    Select From List By Value    id=id_state    52
    Select From List By Label    id=id_state    Texas
    Input Text    id=postcode    12345
    Select From List By Value    id=id_country    21
    Input Text    id=other    Teste teste teste
    Input Text    id=phone_mobile    41991934361
    Click Element    id=submitAccount
    ${Mensagem_Atual}    Get Text    xpath=//h1[@Class="page-heading"]
    Should Be Equal    ${Mensagem}    ${Mensagem_Atual} 
    Close Browser         

    




       
    