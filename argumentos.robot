*** Keywords ***
Somar numeros
    [Arguments]    ${NUM_1}    ${NUM_2}
    ${SOMA}    Evaluate    ${NUM_1}+${NUM_2} 
    [Return]   ${SOMA}

Subtrair numeros
    [Arguments]    ${NUM_1}    ${NUM_2}
    ${SUBTRACAO}    Evaluate    ${NUM_1}-${NUM_2} 
    [Return]   ${SUBTRACAO}

Dividir numeros
    [Arguments]    ${NUM_1}    ${NUM_2}
    ${DIVISAO}    Evaluate    ${NUM_1}/${NUM_2} 
    [Return]   ${DIVISAO}

Multiplicar numeros
    [Arguments]    ${NUM_1}    ${NUM_2}
    ${MULTIPLICACAO}    Evaluate    ${NUM_1}*${NUM_2} 
    [Return]   ${MULTIPLICACAO}

Retorno email
    [Arguments]    ${NOME}
    Set Test Variable    ${EMAIL}    ${NOME}@email.com.br         
    [Return]   ${EMAIL}