*** Settings ***
Resource    ../resources/carrinho_keywords.robot
Suite Setup    Abrir o navegador e acessar o site
Suite Teardown    Close Browser

*** Test Cases ***
Efetuar uma compra 
    [Tags]    realizar_compra
    Dado que realizo o login com sucesso
    E pesquiso um produto na loja da kabum
    Então adiciono o produto com sucesso

Remover uma compra do carrinho
    [Tags]    excluir_compra
    Dado que realizo o login com sucesso
    E pesquiso um produto na loja da kabum
    Então adiciono o produto com sucesso
    Então dessisto da compra e excluo o produto do carrinho

Realizar compra e excluir o item do carrinho
    [Tags]   geral
    Dado que realizo o login com sucesso
    E pesquiso um produto na loja da kabum
    Então adiciono o produto com sucesso
    Então dessisto da compra e excluo o produto do carrinho
    
