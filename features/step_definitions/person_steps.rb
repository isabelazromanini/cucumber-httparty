
Dado("que eu acesse a API") do
  #já instanciado pela classe Person
end

Quando("eu solicite cadastrar a pessoa") do
  @response = $person.postPerson
end

Então("visualizo o cadastro da pessoa e o retorno {int}") do |int|
      #expect do status code e message
      expect(@response.code).to eq(int)
      puts "Response code: #{@response.code}"
      expect(@response.message).to eq("")
      
      
      #imprime os atributos da requisição
      puts "ID    : #{@response["id"]}"
        
      $id = @response["id"]
      
end

Quando("eu solicite consultar a pessoa passando o ID da pessoa") do
  @get = $person.getPerson($id)
  #binding.pry
end

Então("visualizo os dados da pessoa e o retorno {int}") do |int|

  expect(@get.code).to eq(int)
  puts "Response code: #{@get.code}"
  expect(@get.message).to eq("")
  expect(@get["id"]).to eq($id)

  puts "ID    : #{@get["id"]}"

end 

Quando("eu solicite excluir uma pessoa") do
  @delete = $person.deletePerson($id)
end

Então("visualizo os dados da exclusão e o retorno {int}") do |int|
  expect(@delete.code).to eq(int)
  puts "Response code: #{@delete.code}"
  expect(@delete.message).to eq("")

end
