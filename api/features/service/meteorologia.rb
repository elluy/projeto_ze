class Meteorologia
    include HTTParty

    base_uri 'https://api.openweathermap.org/data/2.5/weather'
    
    def requisicao (path)
        self.class.get(path)
    end
end
