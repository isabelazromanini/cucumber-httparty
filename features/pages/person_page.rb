class Person
    include HTTParty
    require_relative '../hooks/person_hook'
    base_uri "#{$servidores['paulistao']}:8125"
    headers 'Content-Type' => 'application/json; charset=UTF-8'
    
     
    def initialize(body)
      @options = {:body => body}
      @options2 ={}
    end
  
    def postPerson
      self.class.post("/api/person/people", @options)
    end

    def getPerson (id)
      #binding.pry
      #binding.pry
      #return response
      self.class.get("/api/person/people/#{id}")
    end

    #def putPerson (id)
    #  self.class.put("/people/#{id}", @options)
    #end

    def deletePerson (id)
      self.class.delete("/api/person/people/#{id}", @options2)
    end
  end