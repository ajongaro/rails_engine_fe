require 'rails_helper'

RSpec.describe 'the merchant index page', type: :feature do
  describe 'the merchant index page' do
    it 'list of merchants with links' do
      visit '/merchants'

      expect(page).to have_content('Merchants Index')
      expect(page).to have_link('Schroeder-Jerde')
    end

    it "goes to a merchant's items on click" do
      visit '/merchants/1'

      expect(page).to have_content('Schroeder-Jerde')
    end
  end
end