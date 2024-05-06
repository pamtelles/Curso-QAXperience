# language:pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

    Contexto: 
        Dado que iniciei a compra do item:
            | name     | Café com Leite |
            | price    | R$ 19,99       |
            | delivery | R$ 10,00       |
            | total    | R$ 29,99       |

    Cenario: Aplicar Desconto de 20%


    Quando aplico o cupom: "MEUCAFE"
    Entao o valor final da compra deve ser atualizado para "R$ 25,99"

    Cenario: Cupom Expirado

    Quando aplico o cupom: "PROMO20"
    Entao devo ver a notificação: "Cupom expirado!"
        E o valor final da compra deve permanecer o mesmo

    Cenario: Cupom Inválido

    Quando aplico o cupom: "PROMO100"
    Entao devo ver a notificação: "Cupom inválido!"
        E o valor final da compra deve permanecer o mesmo

    Esquema do Cenario: Tentativa de aplciar o desconto

    Quando aplico o cupom: "<cupom>"
    Entao devo ver a notificação: "<saida>"
        E o valor final da compra deve permanecer o mesmo

    Exemplos:
    | cupom     | saida           |
    | PROMO20   | cupom expirado! |
    | PROMO 100 | cupom inválido! |






