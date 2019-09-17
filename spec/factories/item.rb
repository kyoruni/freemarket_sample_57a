FactoryBot.define do
  factory :item do
    id    {1}
    name  {"レディース・シャネル・キーケース"}
    text  {"レディース・シャネル・キーケースです"}
    price {35000}
    category
    brand
    condition
    delivery_day
    delivery_way
    size
    postage
    region
    saler
  end
end