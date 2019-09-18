#language: pt
@person
Funcionalidade: Person
   Como administrador
   Desejo gerenciar todos as pessoas do sistema
   Para poder relaciona-las aos produtos e realizar os agendamentos.

 

Cenario: Cadastro de pessoa CPF - Retorno 201
   Dado que eu acesse a API 
   Quando eu solicite cadastrar a pessoa
   Então visualizo o cadastro da pessoa e o retorno 201
   


Cenario: Consultar uma pessoa - Retorno 200 
    Dado que eu acesse a API 
    Quando eu solicite consultar a pessoa passando o ID da pessoa 
    Então visualizo os dados da pessoa e o retorno 200
    

#Cenario: Editar uma pessoa - Retorno 202
#    Dado que eu acesse a API 
#    Quando eu solicite editar uma pessoa 
#    Então visualizo os dados alterados e o retorno  202 
    

Cenario: Excluir uma pessoa - Retorno 202 
    Dado que eu acesse a API 
    Quando eu solicite excluir uma pessoa 
    Então visualizo os dados da exclusão e o retorno 202 
    

