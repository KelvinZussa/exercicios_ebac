            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero realizar a autenticação
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da plataforma EBAC-SHOP

            Esquema do Cenário: Dados de autenticação válidos
            Quando digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                  | senha   | mensagem             |
            | "kelvinzussa@gmail.com"  | "12345" | "Bem vindo Kelvin"   |
            | "jorgezussa@gmail.com"   | "12345" | "Bem vindo Jorge"    |
            | "otaviozussa@gmail.com"  | "12345" | "Bem vindo Otavio"   |
            | "viniciuzussa@gmail.com" | "12345" | "Bem vindo Vinicius" |

Cenário: Dados de autenticação inválidos
Quando eu digitar o usuário "kelvinzussa@gmail.com"
E senha "67890"
Entao deve exibir a mensagem de alerta "Usário ou senha inválidos"



