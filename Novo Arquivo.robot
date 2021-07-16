*** variables ***
&{Dados_Cadastrais}=    Nome=Salete   Idade=55    Empresa=SIS   Cidade=Curitiba     Estado_Civil=Casada    Estado=PR

@{MarcasCelulares}=  Motorola  Sansung  Apple  Nokia  Iomi

&{Notas}=   Nota1=5     Nota2=7     Nota3=9 

@{NotasList}=    5    7    9 

@{resultado}
@{resultadoList}    
  
*** Test Cases ***
#Variável Simples
Imprimindo Variável
    log to console  ${Dados_Cadastrais}

#Variável Dicionário
Imprimindo Variável Tipo Dicionário
    log to console  ${Dados_Cadastrais.Nome}
    log to console  ${Dados_Cadastrais.Idade}
    log to console  ${Dados_Cadastrais.Empresa}
    log to console  ${Dados_Cadastrais.Cidade}
    log to console  ${Dados_Cadastrais.Estado_Civil}
    log to console  ${Dados_Cadastrais.Estado}

Imprimindo Marcas de Celulares
    log to console  ${MarcasCelulares}

Imprimindo Marcas de Celulares
    log to console  ${MarcasCelulares[0]}
    log to console  ${MarcasCelulares[1]}
    log to console  ${MarcasCelulares[2]}
    log to console  ${MarcasCelulares[3]}
    log to console  ${MarcasCelulares[4]}

#Tipo Dicionário
#Media
#Operações1
#    ${Media}​​​​​​​​=    Evaluate    (${​​​​​​​​Notas.Nota1}​​​​​​​​+${​​​​​​​​Notas.Nota2}+${Notas.Nota3})/3
#    Log To Console    ${Media} 
#    Log    ${Media}
Média
    &{ALUNO}   Create Dictionary 
        ...        notaA=5.5
        ...        notaB=5.4    
        ...        notaC=10  
    ${media}=      Evaluate   (${ALUNO.notaA}+${ALUNO.notaB}+${ALUNO.notaC})/3
    Log To Console    ${media}
#Tipo Lista
#Operações2
#    log to console  ${resultado}​​​​​​​​=   Evaluate    ${​​​​​​​​Notas[0]}+${​​​​​​​​Notas[1]}+${​​​​​​​​Notas[2]} 
   
#   Log To Console    ${ResultadoList}    Evaluate    {NotasLis[1]}+{NotasList[2]}+{NotasLis[3]}
    
   


