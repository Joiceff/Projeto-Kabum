*** Settings ***
Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${URL}     https://www.kabum.com.br/login?redirect_uri=https://www.kabum.com.br/
${EMAIL}   seu-email@exemplo.com
${SENHA}   suaSenha123

*** Keywords ***
Abrir o navegador e acessar o site
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Dado que realizo o login com sucesso
    # Click Element    xpath=//a[contains(@href, "/login")]
    Log To Console    Digitando o e-mail
    Input Text       //*[@id="main-content"]/div[2]/div/section/div/form/div[1]/input     samuelbrandao.oliveira@gmail.com
    Sleep    5

    
    Log To Console    Digitando o e-mail
    Input Text      //*[@id="main-content"]/div[2]/div/section/div/form/div[2]/input      G@fisa2030
    Sleep    5

    Log To Console    Clicando na mensagem de Cookies
    Click Button    //*[@id="onetrust-accept-btn-handler"]
    
    Log To Console    Clicando no botão ENTRAR
    Click Button     //*[@id="main-content"]/div[2]/div/section/div/form/button[1]

    Sleep    5
    Page Should Contain  Olá
    Sleep    5

E pesquiso um produto na loja da kabum
   
    Log To Console    Fechando propaganda
    Click Element    //span[@class="ins-web-opt-in-reminder-close-button"]
    Sleep   10
    
    Log To Console    Pesquisar um produto
    Wait Until Element Is Visible    xpath=//input[@id="inputBusca"]

   ${palavra}=    Set Variable    aspirador
    @{letras}=     Evaluate    list("${palavra}")
    FOR    ${char}    IN    @{letras}
        Press Keys    xpath=//input[@id="inputBusca"]    ${char}
        Sleep    0.2
    END
    Sleep    1
    Press Keys    xpath=//input[@id="inputBusca"]    ENTER
    Sleep  10

    Take Screenshot

Então adiciono o produto com sucesso

    Log To Console    Selecionando o aspirador de pó
    Mouse Over     xpath=//*[@id="listing"]/div[3]/div/div/div[2]/div/main/div[1]/article/div[2]
    Sleep          5
    Click Element  xpath=//*[@id="listing"]/div[3]/div/div/div[2]/div/main/div[1]/article/div[2]    
    Sleep    5
    Page Should Contain    Garantia Estendida Original Ampliada
    Sleep    5

    Log To Console    Removendo a garantia e serviços extendidos do produto
    Click Button    //*[@id="main-content"]/div[1]/div/div[2]/section/section/button[2]
    Sleep    5

    Take Screenshot
   

Então dessisto da compra e excluo o produto do carrinho
    Log To Console    Removendo o produto do carrinho
    # Go To    https://www.kabum.com.br/carrinho
    Page Should Contain    Resumo
    Click Button     //*[@id="removerTodosProdutos"]
    Page Should Contain    Você tem certeza que deseja remover todos os produtos do carrinho?
    Click Button    //*[@id="radix-:r0:"]/div/button[2]
    Sleep    5
    Page Should Contain    O seu carrinho está vazio.
    Take Screenshot