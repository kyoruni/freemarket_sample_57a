# 01 Delivery_days 発送までの日数
# 02 Delivery_ways 配送方法
# 03 sizes サイズ
# 04 conditions

# 01 Delivery_days 発送までの日数
DeliveryDay.seed(:id,
  {id: 1, day: "1~2日で発送" },
  {id: 2, day: "2~3日で発送" },
  {id: 3, day: "4~7日で発送" },
)

# 02 Delivery_ways 配送方法
DeliveryWay.seed(:id,
  # 送料込み
  {id: 1,  name: "未定" },
  {id: 2,  name: "らくらくメルカリ便" },
  {id: 3,  name: "ゆうメール" },
  {id: 4,  name: "レターパック" },
  {id: 5,  name: "普通郵便(定形、定形外)" },
  {id: 6,  name: "クロネコヤマト" },
  {id: 7,  name: "ゆうパック" },
  {id: 8,  name: "クリックポスト" },
  {id: 9,  name: "ゆうパケット" },
  # 着払い
  {id: 10, name: "未定" },
  {id: 11, name: "クロネコヤマト" },
  {id: 12, name: "ゆうパック" },
  {id: 13, name: "ゆうメール" },
)

# 03 sizes サイズ
Size.seed(:id,
  # 女性の服
  {id: 1,  name: "XXS以下" },
  {id: 2,  name: "XS(SS)" },
  {id: 3,  name: "S" },
  {id: 4,  name: "M" },
  {id: 5,  name: "L" },
  {id: 6,  name: "XL(LL)" },
  {id: 7,  name: "2XL(3L)" },
  {id: 8,  name: "3XL(4L)" },
  {id: 9,  name: "4XL(5L)以上" },
  {id: 10, name: "FREE SIZE" },
  # 女性の靴
  {id: 11, name: "20cm以下" },
  {id: 12, name: "20.5cm" },
  {id: 13, name: "21cm" },
  {id: 14, name: "21.5cm" },
  {id: 15, name: "22cm" },
  {id: 16, name: "22.5cm" },
  {id: 17, name: "23cm" },
  {id: 18, name: "23.5cm" },
  {id: 19, name: "24cm" },
  {id: 20, name: "24.5cm" },
  {id: 21, name: "25cm" },
  {id: 22, name: "25.5cm" },
  {id: 23, name: "26cm" },
  {id: 24, name: "26.5cm" },
  {id: 25, name: "27cm" },
  {id: 26, name: "27.5cm以上" },
  # 男性の靴 【保留】
  # {id: 27, name: "23.5cm以下" },
  # {id: 28, name: "24cm" },
  # {id: 29, name: "24.5cm" },
  # {id: 30, name: "25cm" },
  # {id: 31, name: "25.5cm" },
  # {id: 32, name: "26cm" },
  # {id: 33, name: "26.5cm" },
  # {id: 34, name: "27cm" },
  # {id: 35, name: "27.5cm" },
  # {id: 36, name: "28cm" },
  # {id: 37, name: "28.5cm" },
  # {id: 38, name: "29cm" },
  # {id: 39, name: "29.5cm" },
  # {id: 40, name: "30cm" },
  # {id: 41, name: "30.5cm" },
  # {id: 42, name: "31cm以上" },
)