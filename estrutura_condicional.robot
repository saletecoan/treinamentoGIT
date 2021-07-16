#1. Crie uma keyword que imprima no console as condições:
#- Caso a idade seja maior ou igual a 18 anos = Maior de idade
#2. Crie uma keyword que imprima “sucesso” no console quando encontrar o número 5 em uma lista.
#@ é para lista
*** Variables ***
#@{Numeros}=    1    2    3    4    5    6    7    8    9    10 

*** Test Cases ***
Validar Idade
    Verifica Maior Idade    18

Verificar Numero 5
    @{Numeros}    Create List    1    2    3    4    5    6    7    8    9    10
    Encontrar Numero 5    @{Numeros}  

*** Keywords ***
Verifica Maior Idade
    [Arguments]    ${Idade}
	IF  '${Idade}' >= "18"
		Log To Console    Maior de Idade 
	END

Encontrar Numero 5
    [Arguments]    @{Numeros}
    FOR    ${NÚMERO_ATUAL}    IN    @{Numeros}
#	    Log to console    ${NÚMERO_ATUAL}
	    IF  '${NÚMERO_ATUAL}' == "5"
		    Log To Console    "${NÚMERO_ATUAL}-SUCESSO'
	    END
    END

