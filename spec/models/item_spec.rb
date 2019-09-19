# require 'rails_helper'

# describe Item do
#   describe '#create' do
#     it "全て揃っている時保存できる" do
#       item = build(:item)
#       expect(item).to be_valid
#     end

#     it "nameが無いと保存できない" do
#       item = build(:item, name: "")
#       item.valid?
#       expect(item.errors[:name]).to include("can't be blank")
#     end

#     it "nameが40文字よりおおきいと保存できない" do
#       item = build(:item, name: "a" * 41)
#       item.valid?
#       expect(item.errors[:name]).to include("is too long (maximum is 40 characters)")
#     end

#     it "nameが40文字なら保存できる" do
#       item = build(:item, name: "a" * 40)
#       expect(item).to be_valid
#     end

#     it "textが無いと保存できない" do
#       item = build(:item, text: "")
#       item.valid?
#       expect(item.errors[:text]).to include("can't be blank")
#     end

#     it "textが1000文字以上だと保存できない" do
#       item = build(:item, text: "a" * 1001)
#       item.valid?
#       expect(item.errors[:text]).to include("is too long (maximum is 1000 characters)")
#     end

#     it "textが1000文字なら保存できる" do
#       item = build(:item, text: "a" * 1000)
#       expect(item).to be_valid
#     end

#     it "priceが無いと保存できない" do
#       item = build(:item, price: "")
#       item.valid?
#       expect(item.errors[:price]).to include("can't be blank")
#     end

#     it "priceが300より下だと保存できない" do
#       item = build(:item, price: 299)
#       item.valid?
#       expect(item.errors[:price]).to include("is not included in the list")
#     end

#     it "priceが300なら保存できる" do
#       item = build(:item, price: 300)
#       expect(item).to be_valid
#     end

#     it "priceが9999999より上だと保存できない" do
#       item = build(:item, price: 10000000)
#       item.valid?
#       expect(item.errors[:price]).to include("is not included in the list")
#     end

#     it "priceが9999999なら保存できる" do
#       item = build(:item, price: 9999999)
#       expect(item).to be_valid
#     end

#     it "category_idが無いと保存できない" do
#       item = build(:item, category_id: "")
#       item.valid?
#       expect(item.errors[:category_id]).to include("can't be blank")
#     end

#     it "brandが無くても保存できる" do
#       item = build(:item, brand_id: "")
#       expect(item).to be_valid
#     end

#     it "condition_idが無いと保存できない" do
#       item = build(:item, condition_id: "")
#       item.valid?
#       expect(item.errors[:condition_id]).to include("can't be blank")
#     end

#     it "delivery_day_idが無いと保存できない" do
#       item = build(:item, delivery_day_id: "")
#       item.valid?
#       expect(item.errors[:delivery_day_id]).to include("can't be blank")
#     end

#     it "delivery_way_idが無いと保存できない" do
#       item = build(:item, delivery_way_id: "")
#       item.valid?
#       expect(item.errors[:delivery_way_id]).to include("can't be blank")
#     end

#     it "size_idが無いと保存できない" do
#       item = build(:item, size_id: "")
#       item.valid?
#       expect(item.errors[:size_id]).to include("can't be blank")
#     end

#     it "saler_idが無いと保存できない" do
#       item = build(:item, saler_id: "")
#       item.valid?
#       expect(item.errors[:saler_id]).to include("can't be blank")
#     end

#     it "postage_idが無いと保存できない" do
#       item = build(:item, postage_id: "")
#       item.valid?
#       expect(item.errors[:postage_id]).to include("can't be blank")
#     end

#     it "region_idが無いと保存できない" do
#       item = build(:item, region_id: "")
#       item.valid?
#       expect(item.errors[:region_id]).to include("can't be blank")
#     end
#   end
# end