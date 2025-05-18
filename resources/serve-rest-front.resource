*** Settings ***    
Library    Browser
Library    FakerLibrary

*** Variables ***
${BROWSER}    chromium
${HEADLESS}    ${False}
${URL}    https://front.serverest.dev/login

*** Keywords ***
Abrir o navegador 
    New Browser    ${BROWSER}    
    ...            headless=${HEADLESS}

Ir para o site serverest
    New Page    ${URL}

Preencher os dados do novo user e cadastrar
    Click    css=.btn-link
    ${EMAIL}    FakerLibrary.Email
    Fill Text    [data-testid='nome']    Natan   
    Fill Text    [data-testid='email']    ${EMAIL}
    Fill Text    [data-testid='password']    123456
    Check Checkbox    [data-testid='checkbox']
    click    [data-testid='cadastrar']
    Sleep   5s
    
