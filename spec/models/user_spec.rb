require 'rails_helper'

RSpec.describe User do
  describe '#create' do
    it "全て揃っている時保存できる" do
      expect(FactoryBot.build(:user)).to be_valid
    end

    it "nameが無いと保存できない" do
      user = FactoryBot.build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "emailが無いと保存できない" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "passwordが無いと保存できない" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "last_nameが無いと保存できない" do
      user = FactoryBot.build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end

    it "first_nameが無いと保存できない" do
      user = FactoryBot.build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    it "first_name_kanaが無いと保存できない" do
      user = FactoryBot.build(:user, first_name_kana: nil)
      user.valid?
      expect(user.errors[:first_name_kana]).to include("can't be blank")
    end

    it "last_name_kanaが無いと保存できない" do
      user = FactoryBot.build(:user, last_name_kana: nil)
      user.valid?
      expect(user.errors[:last_name_kana]).to include("can't be blank")
    end

    it "birth_yearが無いと保存できない" do
      user = FactoryBot.build(:user, birth_year: nil)
      user.valid?
      expect(user.errors[:birth_year]).to include("can't be blank")
    end

    it "birth_monthが無いと保存できない" do
      user = FactoryBot.build(:user, birth_month: nil)
      user.valid?
      expect(user.errors[:birth_month]).to include("can't be blank")
    end

    it "birth_dayが無いと保存できない" do
      user = FactoryBot.build(:user, birth_day: nil)
      user.valid?
      expect(user.errors[:birth_day]).to include("can't be blank")
    end

    it "phone_numberが無いと保存できない" do
      user = FactoryBot.build(:user, phone_number: nil)
      user.valid?
      expect(user.errors[:phone_number]).to include("can't be blank")
    end

    it "nameが1文字以下だと保存出来ない" do
      user = FactoryBot.build(:user, name: "a")
      user.valid?
      expect(user.errors[:name][0]).to include("is too short")
    end

    it "nameが11文字以上だと保存出来ない" do
      user = FactoryBot.build(:user, name: "aaaaaaaaaaa")
      user.valid?
      expect(user.errors[:name][0]).to include("is too long")
    end
  end
end

