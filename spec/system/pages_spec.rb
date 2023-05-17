require 'rails_helper'

RSpec.describe "Pages", type: :system do
  describe '#index' do
    it 'トップページの表示' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end
end
