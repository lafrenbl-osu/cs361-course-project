class RestModelBase
  class << self
    def base_url
      raise "abstract method called"
    end

    def all_path
      raise "abstract method called"
    end

    def create_path
      raise "abstract method called"
    end

    def find_path
      raise "abstract method called"
    end

    def all
      response = http_client.get(all_path)
      JSON.parse(response.body).map { |item_json| self.new(json: item_json) }
    end

    def find(id)
      response = http_client.get(find_path(id))
      self.new(json: JSON.parse(response.body))
    end

    def create(params)
      body = params.to_json
      response = http_client.post(create_path, body)
    end

    def http_client
      @http_client ||= Faraday.new(
        url: base_url,
        headers: { 'Content-Type' => 'application/json' }
      )
    end
  end

  def initialize(json: nil, json_str: nil)
    if json_str.present?
      @json = JSON.parse(json_str)
    else
      @json = json
    end
  end

  def method_missing(attribute, *args)
    return @json[attribute] if @json.key?(attribute)
    return @json[attribute.to_s] if @json.key?(attribute.to_s)
    super(attribute, *args)
  end

  def to_key
    [id]
  end

  def errors
    @errors ||= []
  end
end
