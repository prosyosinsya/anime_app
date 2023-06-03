require "rails_helper"

RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー登録" do
    it "email,password,password_confirmationが存在すれば登録できること" do
      expect(@user).to be_valid
    end
  end
end