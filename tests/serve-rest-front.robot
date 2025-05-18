*** Settings ***        
Resource    ../resources/serve-rest-front.resource      


*** Test Cases ***
Abrir o navegador
    Abrir o navegador  
    Ir para o site serverest
    Preencher os dados do novo user e cadastrar