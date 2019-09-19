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

    it "nameが2文字以上で保存出来る" do
      user = FactoryBot.build(:user, name: "メル")
      user.valid?
      expect(user).to be_valid
    end

    it "nameが11文字以上だと保存出来ない" do
      user = FactoryBot.build(:user, name: "aaaaaaaaaaa")
      user.valid?
      expect(user.errors[:name][0]).to include("is too long")
    end

    it "nameが10文字で保存出来る" do
      user = FactoryBot.build(:user, name: "メルかり楽しいなああ")
      user.valid?
      expect(user).to be_valid
    end

    it "同じメールアドレスは登録出来ない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "不正なメールアドレスは登録出来ない" do
      user = FactoryBot.build(:user, email: "sampleaddress")
      user.valid?
      expect(user.errors[:email]).to include("is invalid")
    end
  
    it "passwordが存在してもpassword_confirmationが空では登録できない" do
      user = FactoryBot.build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "passwordが6文字以下であれば登録できない" do
      user = FactoryBot.build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password][0]).to include("is too short")
    end

    it "passwordが7文字で保存出来る" do
      user = FactoryBot.build(:user, password: "a123456", password_confirmation: "a123456")
      user.valid?
      expect(user).to be_valid
    end

    it "passwordは21文字では保存出来ない" do
      user = FactoryBot.build(:user, password: "a12345678901234567890", password_confirmation: "a12345678901234567890")
      user.valid?
      expect(user.errors[:password][0]).to include("is too long")
    end

    it "passwordが20文字で保存出来る" do
      user = FactoryBot.build(:user, password: "a1234567891234567890", password_confirmation: "a1234567891234567890")
      user.valid?
      expect(user).to be_valid
    end

    it "last_name_kanaはカタカナでないと保存出来ない" do
      user = FactoryBot.build(:user, last_name_kana: "さとう")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("はカナ文字を入力してください" )
    end

    it "first_name_kanaはカタカナでないと保存出来ない" do
      user = FactoryBot.build(:user, first_name_kana: "たろう")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("はカナ文字を入力してください" )
    end

  end
end

