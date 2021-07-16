*** Variables ***
@{numero}    2    4    8    

*** Test Case ***
#1-Crie uma keyword que imprima no console uma lista de números de 0 a 10 utilizando estrutura de repetição
#2-Crie uma keyword que imprima no console uma lista de números em formato crescente, baseado em um argumento recebido com o número máximo de iterações.
#3-Crie uma keyword que imprime no console uma lista recebida por argumento.
Lista de Numeros
    Contar numeros da lista

Contar
    Contar numero maximo    11
    Contar numero maximo    110

Criar Lista
    Lista recebida por argumento    @{numero}
    

*** Keywords ***
Contar numeros da lista
    FOR    ${count}    IN RANGE    0    11
        Log to console    ${count}
    END

Contar numero maximo
    [Arguments]    ${MAX}
    FOR  ${count}    IN RANGE    0    ${MAX}
        Log to console    ${count} 
    END  

Lista recebida por argumento
    [Arguments]    @{NUMERO}
    FOR  ${count}    IN    @{NUMERO}
        Log to console    ${count} 
    END  

