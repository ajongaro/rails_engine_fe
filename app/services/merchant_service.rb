class MerchantService
  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.all_merchants_response
    response = conn.get('/api/v1/merchants')
    parse(response)
  end

  def self.merchant_response(merchant)
    response = conn.get("/api/v1/merchants/#{merchant}")
    parse(response)
  end

  def self.merchant_items_response(merchant)
    response = conn.get("/api/v1/merchants/#{merchant}/items")
    parse(response)
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  private_class_method :conn, :parse
end