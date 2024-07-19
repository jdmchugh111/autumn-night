class SearchService
  def initialize(nation)
    @nation = nation
  end

  def conn
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def all_members_count
    json = get_url("/api/v1/characters?affiliation=#{@nation}&perPage=100")
    json.count
  end

  def get_25_members
    get_url("/api/v1/characters?affiliation=#{@nation}&perPage=25")
  end

end