#1. Crie uma keyword que imprima no console as condições:
#- Caso a idade seja maior ou igual a 18 anos = Maior de idade
#2. Crie uma keyword que imprima “sucesso” no console quando encontrar o número 5 em uma lista.
#@ é para lista
#1. Crie uma keyword que imprima no console as condições:
#- Caso a idade seja maior ou igual a 18 anos = Maior de idade
#- Caso a idade seja menor que 18 anos = Menor de idade
#2. Crie uma keyword que receba uma lista de números e imprima no console se um número é par ou ímpar
#Dica: Para saber se o número é par ou impar, basta dividir por 2 e caso o resto seja inteiro é par

*** Variables ***
#@{Numeros}=    1    2    3    4    5    6    7    8    9    10 

*** Test Cases ***
Validar Idade
    Verifica Maior Idade    18

Verificar Numero 5
    @{Numeros}    Create List    1    2    3    4    5    6    7    8    9    10
    Encontrar Numero 5    @{Numeros}  

Validar Idade
    Verificar Maior Idade    15

Validar Par ou Impar
    @{Valor}    Create List    1    2    3    4    5    6    7    8    9    10
    Verificar Par ou Impar    @{Valor}

Validar Numero
    @{Valor}    Create List    1    2    3    4    5    6    7    8    9    10
    Verificar Numero    @{Valor}

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

Verificar Maior Idade
    [Arguments]    ${Idade}
	IF  '${Idade}' >= "18"
		Log To Console    Maior de Idade 
	ELSE
	    Log To Console    Menor de Idade 
	END

Verificar Par ou Impar
    [Arguments]    @{Valor}
		    ${Resultado}=    Evaluate    ${NÚMERO_ATUAL}%2    
	    IF  '${Resultado}' == "0"
		    Log To console    ...
# só para separar o 1
	        Log To Console    ${NÚMERO_ATUAL}-PAR
	    ELSE
		    Log To console    ...
	        Log To Console    ${NÚMERO_ATUAL}-IMPAR
	    END
	END

Verificar Numero
    [Arguments]    @{Valor}
    FOR    ${NÚMERO_ATUAL}    IN    @{Valor}
	    IF    '${NÚMERO_ATUAL}' == "5"
	        Log To Console    ${NÚMERO_ATUAL}-ACHEI
	    ELSE IF    '${NÚMERO_ATUAL}' == "8"
	        Log To Console    ${NÚMERO_ATUAL}-ACHEI
		ELSE    
	        Log To Console    NÃO ENCONTRADO
	    END
	END
