class MerchantFacade
  def self.merchants
    data = MerchantService.all_merchants_response[:data]
    data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant(merchant_id)
    data = MerchantService.merchant_response(merchant_id)[:data]
    Merchant.new(data)
  end

  def self.merchant_items(merchant_id)
    data = MerchantService.merchant_items_response(merchant_id)[:data]
    data.map do |item_data|
      Item.new(item_data)
    end
  end
end