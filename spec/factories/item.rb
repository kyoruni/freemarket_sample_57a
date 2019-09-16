FactoryBot.define do
  factory :item do
    name            {"レディース・シャネル・キーケース"}
    text            {"レディース・シャネル・キーケースです"}
    price           {35000}
    category_id     {280}
    brand_id        {3385}
    condition_id    {1}
    delivery_day_id {1}
    delivery_way_id {1}
    size_id         {1}
    saler_id        {1}
    postage_id      {1}
    region_id       {1}
  end
end