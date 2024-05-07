#language: pt

Funcionalidade: Pedidos

    Como um usuario do site Starbugs, eu quero selecionar e comprar cafes
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega
    
    @smoke
    Cenario: Compra bem sucedida

        Dado que estou na pagina principal da starbugs
            E que iniciei a compra do item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP: "13940970"
            E informo os demais dados do endereço:
                | number  | 180 |
                | details | 31  |
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra 
        Entao sou redirecionado para a pagina de confirmaçao de Pedidos
            E deve ser informado o seguinte prazo de entrega: "20 min - 30 min"
