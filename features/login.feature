#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso às playlists do Parodify

    @smoke
    Cenario: Login do usuário

        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "testando3@gmail.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Login

        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:

            | email               | senha  |
            | testando@465.com    | abc123 |
            |                     |        |
            | testando3@gmail.com |        |
            | testando3@465.com   |        |
