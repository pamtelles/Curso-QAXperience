#language: pt

Funcionalidade: Catalogo de cafes
    Como um usuario do site, eu quero ver o catalogo de cafes na pagina principal 
    Para que eu possa escolher e saber mais sobre os produtos disponiveis

Cenario: Acessar o catalogo de cafes na pagina principal

    Quando acesso a pagina principal da starbugs
    Entao eu devo ver uma lista de cafes disponiveis


Cenario: iniciar a compra de um cafe
    Dado que estou na pagina principal da starbugs
        E que desejo comprar o seguinte produto:
        | name     | Expresso Gelado |
        | price    | R$ 9,99         |
        | delivery | R$ 10,00        |
    Quando inicio a compra desse item
    Entao devo ver a pagina de Checkout com os detalhes do produto
        E o valor total da compra deve ser "R$ 19,99"


Cenario: cafe indisponivel

        Dado que estou na pagina principal da starbugs
            E que desejo comprar o cafe "Expresso Cremoso"
            | name     | Expresso Cremoso |
        Quando inicio a compra desse item
        Entao devo ver popup informando que o produto esta indisponivel
