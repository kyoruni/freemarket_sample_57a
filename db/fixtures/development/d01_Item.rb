data_id = 0

data_id += 1
Item.seed do |s|
  s.id      = data_id
  s.name    = "【美品】CHANEL シャネル カーディガン"
  s.text    = "シャネル CHANELのカーディガンです。※100％コットン"
  s.postage = "送料込み（出品者負担）"
  s.price   = 35000
  s.state   = ""
  s.category_id = 300
  s.brand_id = 1
  s.condition_id = 1
  s.delivery_day_id = 1
  s.size_id = 1
  s.region_id = 10
  s.postage_id = 2
end

data_id += 1
Item.seed do |s|
  s.id      = data_id
  s.name    = "Supreme x UNDERCOVER Reversible MA-1"
  s.text    = "シュプリーム  × アンダーカバー 人気色 人気サイズ"
  s.postage = "送料込み（出品者負担）"
  s.price   = 40000
  s.state   = ""
  s.category_id = 280
  s.brand_id = 2
  s.condition_id = 6
  s.delivery_day_id = 2
  s.size_id = 1
  s.region_id = 30
  s.postage_id = 1
end