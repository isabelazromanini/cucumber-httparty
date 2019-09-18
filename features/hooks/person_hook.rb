Before '@person' do
    
    birthDate = "2019-10-21"
    email = FFaker::Internet.email
    fullName = FFaker::NameBR.name
    gender = ['Feminino', 'Masculino', 'Não-Binário']
    #phoneNumberMain = 16987678767
     #gambiarra pra gerar numero
    phoneNumberMain = FFaker::SSNMX.imss_undashed
    #phoneNumber = 15987876567
    #gambiarra pra gerar numero
    phoneNumber = FFaker::SSNMX.imss_undashed
    socialName = FFaker::NameBR.first_name
    documentNumber = FFaker::IdentificationBR.cpf
    documentType = "CPF"

    body = {
        "birthDate": "#{birthDate}",
         "documentNumber": "#{documentNumber}",
         "documentType": "#{documentType}",
        "email": "#{email}",
        "fullName": "#{fullName}",
        "gender": "#{gender.sample}",
        "mainPhone": {
          "main": true,
          "phoneNumber": "#{phoneNumberMain}"
        },
        "phones": [
          {
            
            "phoneNumber": "#{phoneNumber}"
          }
        ],
        "socialName": "#{socialName}",
      }

      @body = JSON.generate(body)
  
    $person = Person.new(@body)





    
end