#language: pt
  Funcionalidade: Exemplo de requisição com a API do Harry Potter

    Esquema do Cenário: O usuário gostaria de informações sobre Ronald Weasley
      Dado que o usuário gostaria de ver o personagem número <id>
      Quando o usuário clicar em procurar personagem do Harry Potter
      Então o usuário deveria receber uma <mensagem> de "sucesso"
      E o usuário dever ver o campo "name" com valor "Ronald Wesasley"
      E o usuário dever ver o campo "house" com valor "Gryffindor"

      Exemplos:
      |id                         | mensagem       |
      | 5a1239c80f5ae10021650dad  | successo       |
      | 123                       | não encontrado |