module ZhunaCnWrapper
  class City < ApiBase
    def get_cities
      @method = 'city'
      fetch_and_parse
    end
  end
end