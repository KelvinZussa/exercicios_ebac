            #language: pt

            Funcionalidade: Configurar produto
            Como cliente do EBAC-SHOP
            Quero escolher meu produto de acordo com tamanho
            E quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse o EBAC-SHOP

            Esquema do Cenário: Cor, tamanho e quantidade deve ser obrigatórios
            Quando selecionar o <produto>
            E <cor> e/ou, <tamanho> e/ou <quantidade> não estiverem selecionados
            Então deve exibir a <mensagem> de alerta "É preciso selecionar cor, tamanho e quantidade."

            Exemplos:
            | produto                    | cor       | tamanho   | quantidade | mensagem                                          |
            | "Jaqueta Pullover Augusta" | "Laranja" | "Pequeno" | "0"        | "É preciso selecionar cor, tamanho e quantidade." |
            | "Jaqueta Pullover Augusta" | "Vazio"   | "Pequeno" | "1"        | "É preciso selecionar cor, tamanho e quantidade." |
            | "Jaqueta Pullover Augusta" | "Laranja" | "Pequeno" | "1"        | "É preciso selecionar cor, tamanho e quantidade." |
            | "Jaqueta Pullover Augusta" | "Laranja" | "Vazio"   | "1"        | "É preciso selecionar cor, tamanho e quantidade." |


Cenário: Permitir apenas 10 produtos por venda
Quando informar uma quantidade maior que 10 produtos para compra
Então deve exibir uma mensagem de alerta "É permitido somente 10 produtos por venda"

Cenário: Ao clicar na opção "limpar" deve voltar ao estado Original
Quando clicar na opção "limpar"
Então deve limpar toda a seleção do produto

