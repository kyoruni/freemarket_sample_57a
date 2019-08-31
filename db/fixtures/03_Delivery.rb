# 01 Delivery_days 発送までの日数
# 02 Delivery_ways 配送方法
# 03 sizes
# 04 conditions

# 01 Delivery_days 発送までの日数
DeliveryDay.seed(:id,
  {id: 1, day: "1~2日で発送" },
  {id: 2, day: "2~3日で発送" },
  {id: 3, day: "4~7日で発送" },
)

# 02 Delivery_ways 配送方法
DeliveryWay.seed(:id,
  {id: 1,  name: "未定" },
  {id: 2,  name: "らくらくメルカリ便" },
  {id: 3,  name: "ゆうメール" },
  {id: 4,  name: "レターパック" },
  {id: 5,  name: "普通郵便(定形、定形外)" },
  {id: 6,  name: "クロネコヤマト" },
  {id: 7,  name: "ゆうパック" },
  {id: 8,  name: "クリックポスト" },
  {id: 9,  name: "ゆうパケット" },
  {id: 10, name: "未定" },
  {id: 11, name: "クロネコヤマト" },
  {id: 12, name: "ゆうパック" },
  {id: 13, name: "ゆうメール" },
)