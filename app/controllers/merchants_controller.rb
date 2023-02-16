class MerchantsController < ApplicationController
  def index
    # limited to 20 results for now
    @merchants = MerchantFacade.merchants[0..19]
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @merchant_items = MerchantFacade.merchant_items(params[:id])
  end
end