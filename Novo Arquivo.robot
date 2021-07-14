*** variables ***
&{Dados_Cadastrais}=    Nome=Salete   Idade=55    Empresa=SIS   Cidade=Curitiba     Estado_Civil=Casada    Estado=PR
    
*** Test Case ***
Imprimindo Variável Tipo Dicionário
    log to console  ${Dados_Cadastrais.Nome}
    log to console  ${Dados_Cadastrais.Idade}
    log to console  ${Dados_Cadastrais.Empresa}
    log to console  ${Dados_Cadastrais.Cidade}
    log to console  ${Dados_Cadastrais.Estado_Civil}
    log to console  ${Dados_Cadastrais.Estado}

