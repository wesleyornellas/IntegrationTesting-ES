#language: pt
  @run
  Funcionalidade: Realizando um simples CRUD na classe de processo.

    Cenário de Fundo:
      Dado que o usuário está na página de processos

    Cenário: Simples POST com todos os campos preenchidos corretamente
      E o usuário informa no campo "vara" o valor "99"
      E o usuário informa no campo "numero_processo" o valor "199"
      E o usuário informa no campo "natureza" o valor "Trabalhista"
      E o usuário informa no campo "partes" o valor "Wesley x Google"
      E o usuário informa no campo "urgente" o valor "S"
      E o usuário informa no campo "arbitramento" o valor "N"
      E o usuário informa no campo "data_entrada" o valor "2020-02-27"
      E o usuário informa no campo "data_saida" o valor "2020-03-05"
      E o usuário informa no campo "data_agendamento" o valor "2020-02-27"
      E o usuário informa no campo "status" o valor "Aguardando entrevista"
      E o usuário informa no campo "observacao" o valor "Nada a declarar"
      Quando o usuário clicar em salvar
      Então o usuário deveria receber uma mensagem de "salvo com sucesso"
      E o usuário dever ver o campo "vara" com valor "99"

    Esquema do Cenário: Simples GET
      E o usuário gostaria de visualizar o processo com id <id>
      Quando o usuário clicar em visualizar
      Então o usuário deveria receber uma mensagem de "<mensagem>"

      Exemplos:
      | id     | mensagem       |
      |99      | sucesso        |
      |3213300 | não encontrado |

    Cenário: Simples PUT
      E o usuário gostaria de visualizar o processo com id 99
      E o usuário informa no campo "data_agendamento" o valor "2020-02-27"
      E o usuário informa no campo "status" o valor "Agendado"
      E o usuário informa no campo "observacao" o valor "Nada a declarar"
      Quando o usuário clicar em atualizar
      Então o usuário deveria receber uma mensagem de "sucesso"
      E o usuário dever ver o campo "status" com valor "Agendado"

    Cenário: Simples DELETE com todos os campos preenchidos corretamente
      E o usuário informa no campo "vara" o valor "99"
      E o usuário informa no campo "numero_processo" o valor "199"
      E o usuário informa no campo "natureza" o valor "Trabalhista"
      E o usuário informa no campo "partes" o valor "Wesley x Google"
      E o usuário informa no campo "urgente" o valor "S"
      E o usuário informa no campo "arbitramento" o valor "N"
      E o usuário informa no campo "data_entrada" o valor "2020-02-27"
      E o usuário informa no campo "data_saida" o valor "2020-03-05"
      E o usuário informa no campo "data_agendamento" o valor "2020-02-27"
      E o usuário informa no campo "status" o valor "Aguardando entrevista"
      E o usuário informa no campo "observacao" o valor "Nada a declarar"
      E o usuário clicar em salvar
      Quando o usuário clicar em deletar
      E o usuário clicar em visualizar
      Então o usuário deveria receber uma mensagem de "não encontrado"