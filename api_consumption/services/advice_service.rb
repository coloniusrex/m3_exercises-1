require 'faraday'
require 'json'

class AdviceService

    def random
      response = connection.get('/advice')
      JSON.parse(response.body)
    end

    def search(term)
      response = connection.get("/advice/search/#{term}")
      JSON.parse(response.body)
    end

    private

    def connection
      Faraday.new 'https://api.adviceslip.com'
    end
end
