            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu tente finalizar minha compra

            Cenário: Dados Obrigatórios
            Quando tentar salvar o cadastro
            E todos os dados obrigatórios estiverem preenchidos
            Então permitir finalizar a compra

            Cenário: Campo Obrigatório vazio
            Quando tentar finalizar o cadastro
            E algum campo obrigatório estiver vazio
            Então deve exibir a mensagem de alerta "Os campos com asterisco são obrigatórios,favor preencher."

            Esquema do Cenário: Validar formato e-mail
            Quando digitiar <e-mail> com formato inválido
            E finalizar a compra
            Então exibir <mensagem> de alerta

            Exemplos:
            | e-mail                     | mensagem                          |
            | "kelvinzussa@.com"         | "Favor informar um e-mail válido" |
            | "kelvinzussa.gmail.com"    | "Favor informar um e-mail válido" |
            | "kelvinzussa.gmail.com.br" | "Favor informar um e-mail válido" |
            | "kelvinzussa.gmail.br"     | "Favor informar um e-mail válido" |

