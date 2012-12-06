module ZhunaCnWrapper
  mattr_accessor :api_url
  ZhunaCnWrapper.api_url = "http://open.zhuna.cn/api/gateway.php"

  mattr_accessor :api_agent_id
  ZhunaCnWrapper.api_agent_id = "SET_YOUR_AGENT_ID"

  mattr_accessor :api_agent_md
  ZhunaCnWrapper.api_agent_md = "SET_YOUR_AGENT_MD"

  mattr_accessor :page_size
  ZhunaCnWrapper.page_size = 10

  def self.setup
    yield self
  end
end