require 'csv'

CSV.read('db/fixtures/10_Item.csv').each_with_index do |item, i|
  next if i === 0

  Item.seed(:id) do |s|
    s.id              = item[0]
    s.name            = item[1]
    s.text            = item[2]
    s.price           = item[3]
    s.state           = item[4]
    s.category_id     = item[5]
    s.brand_id        = item[6]
    s.condition_id    = item[7]
    s.delivery_day_id = item[8]
    s.delivery_way_id = item[9]
    s.size_id         = item[10]
    s.saler_id        = item[11]
    s.buyer_id        = item[12]
    s.postage_id      = item[13] 
    s.region_id       = item[14]
  end
end
