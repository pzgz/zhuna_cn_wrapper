module ZhunaCnWrapper
  class Hotel < ApiBase
    def search_hotels(city_id, params = {})
      @method = 'search'
      fetch_and_parse({ pg: 1, pagesize: ZhunaCnWrapper.page_size, cid: city_id }.merge(params))
    end

    def get_info(hotel_id)
      @method = 'hotel.info'
      fetch_and_parse({ hid: hotel_id })
    end

    def get_images(hotel_id)
      @method = 'hotel.pic'
      fetch_and_parse({ hid: hotel_id })
    end
  end
end