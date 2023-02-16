require 'rails_helper'

RSpec.describe 'The Merchant Show Page', type: :feature do
  describe 'The show page' do
    it 'displays the merchant name' do
      visit '/merchants/1'

      expect(page).to have_content("Schroeder-Jerde's Items")
    end
  end
end