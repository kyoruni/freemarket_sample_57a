require 'rails_helper'

describe User do
  describe '#create' do
  it "全て揃っている時保存できる" do
    item = build(:user)
    expect(user).to be_valid
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "nameが20文字よりおおきいと保存できない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("is too long (maximum is 40 characters)")
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "nameがないと保存出来ない" do
    user = build(:user, name: "")
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

