require 'rest_client'
module ZhunaCnWrapper
  class ApiBase
    attr_accessor :method

    def fetch(params = {})
      response = RestClient.get ZhunaCnWrapper.api_url,
        params: ({ method: @method, agent_id: ZhunaCnWrapper.api_agent_id, agent_md: ZhunaCnWrapper.api_agent_md }).merge(params)
      response
    end

    def fetch_and_parse(params = {})
      parse_result(fetch(params))
    end

    def parse_result(resp)
      json_result = ActiveSupport::JSON.decode(resp) rescue nil
      result = ZhunaCnWrapper::Result.new
      result.total_rows = json_result.fetch('retHeader', {}).fetch('totalput', nil)
      result.page_size = json_result.fetch('retHeader', {}).fetch('pagesize', nil)
      result.current_page = json_result.fetch('retHeader', {}).fetch('page', nil)
      result.total_pages = json_result.fetch('retHeader', {}).fetch('totalpg', nil)
      result.return_flag = json_result.fetch('retmsg', nil)
      result.return_code = json_result.fetch('retcode', nil)
      result.data = json_result.fetch('reqdata', nil)
      result
    end
  end
end