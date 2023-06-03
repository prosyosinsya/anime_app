require 'rails_helper'

RSpec.describe Anime, type: :model do

  describe "バリデーションのテスト" do

    before do
      @anime = FactoryBot.build(:anime)
      # @product.image = fixture_file_upload("/files/test_image.jpg")
    end

    context "titleが空欄の場合" do
      it "無効な状態であること" do
        @anime.title = ""
        expect(@anime).to be_invalid
        # expect(@anime.errors[:title]).to include("を入力してください")
      end
    end

    context "titleが30文字を超える場合" do
      it "無効な状態であること" do
        @anime.title = "a" * 31
        expect(@anime).to be_invalid
        # expect(@anime.errors[:title]).to include("は30文字以内で入力してください")
      end
    end

    # context "全ての話数が空欄の場合" do
    #   it "無効な状態であること" do
    #     @anime.all_part = ""
    #     expect(@anime).to be_invalid
    #     # expect(@anime.errors[:all_part]).to include("を入力してください")
    #   end
    # end

    context "全ての話数が少数の場合" do
      it "無効な状態であること" do
        @anime.all_part = 1.1
        expect(@anime).to be_invalid
      end
    end

    context "現在の話数が空欄の場合" do
      it "無効な状態であること" do
        @anime.current_part = "" 
        expect(@anime).to be_invalid
        # expect(@anime.errors[:current_part]).to include("を入力してください")
      end
    end

    context "現在の話数が少数の場合" do
      it "無効な状態であること" do
        @anime.current_part = 1.1
        expect(@anime).to be_invalid
      end
    end

    context "現在の話数が全ての話数を超えた場合" do
      it "無効な状態であること" do
        @anime.current_part > @anime.all_part
        expect(@anime).to be_invalid
        # expect(@anime.errors[:current_part]).to include("")
      end
    end
  end

end
