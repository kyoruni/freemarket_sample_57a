# 00 親カテゴリー作成
# 01 レディースの子カテゴリー作成
# 02 メンズの子カテゴリー作成
# 03 ベビー・キッズの子カテゴリー作成
# 04 インテリア・住まい・小物の子カテゴリー作成
# 05 本・音楽・ゲームの子カテゴリー作成
# 06 おもちゃ・ホビー・グッズの子カテゴリー作成
# 07 コスメ・香水・美容の子カテゴリー作成
# 08 家電・スマホ・カメラの子カテゴリー作成
# 09 スポーツ・レジャーの子カテゴリー作成
# 10 ハンドメイドの子カテゴリー作成
# 11 チケットの子カテゴリー作成
# 12 自動車・オートバイの子カテゴリー作成
# 13 その他の子カテゴリー作成

# 00 親カテゴリー作成
Category.seed(:id,
  {id: 1,  name: "レディース"},
  {id: 2,  name: "メンズ"},
  {id: 3,  name: "ベビー・キッズ"},
  {id: 4,  name: "インテリア・住まい・小物"},
  {id: 5,  name: "本・音楽・ゲーム"},
  {id: 6,  name: "おもちゃ・ホビー・グッズ"},
  {id: 7,  name: "コスメ・香水・美容"},
  {id: 8,  name: "家電・スマホ・カメラ"},
  {id: 9,  name: "スポーツ・レジャー"},
  {id: 10, name: "ハンドメイド"},
  {id: 11, name: "チケット"},
  {id: 12, name: "自動車・オートバイ"},
  {id: 13, name: "その他"},
)

# 01 レディースの子カテゴリー作成
parent_id = Category.find_by(name: "レディース").id
Category.seed(:id,
  {id: 14, name: "トップス", ancestry: parent_id },
  {id: 15, name: "ジャケット/アウター", ancestry: parent_id },
  {id: 16, name: "パンツ", ancestry: parent_id },
  {id: 17, name: "スカート", ancestry: parent_id },
  {id: 18, name: "ワンピース", ancestry: parent_id },
  {id: 19, name: "靴", ancestry: parent_id },
  {id: 20, name: "ルームウェア/パジャマ", ancestry: parent_id },
  {id: 21, name: "レッグウェア", ancestry: parent_id },
  {id: 22, name: "帽子", ancestry: parent_id },
  {id: 23, name: "バッグ", ancestry: parent_id },
  {id: 24, name: "アクセサリー", ancestry: parent_id },
  {id: 25, name: "ヘアアクセサリー", ancestry: parent_id },
  {id: 26, name: "小物", ancestry: parent_id },
  {id: 27, name: "時計", ancestry: parent_id },
  {id: 28, name: "ウィッグ/エクステ", ancestry: parent_id },
  {id: 29, name: "浴衣/水着", ancestry: parent_id },
  {id: 30, name: "スーツ/フォーマル/ドレス", ancestry: parent_id },
  {id: 31, name: "マタニティ", ancestry: parent_id },
  {id: 32, name: "その他", ancestry: parent_id },
)

# 02 メンズの子カテゴリー作成
parent_id = Category.find_by(name: "メンズ").id
Category.seed(:id,
  {id: 33, name: "トップス", ancestry: parent_id },
  {id: 34, name: "ジャケット/アウター", ancestry: parent_id },
  {id: 35, name: "パンツ", ancestry: parent_id },
  {id: 36, name: "靴", ancestry: parent_id },
  {id: 37, name: "バッグ", ancestry: parent_id },
  {id: 38, name: "スーツ", ancestry: parent_id },
  {id: 39, name: "帽子", ancestry: parent_id },
  {id: 40, name: "アクセサリー", ancestry: parent_id },
  {id: 41, name: "小物", ancestry: parent_id },
  {id: 42, name: "時計", ancestry: parent_id },
  {id: 43, name: "水着", ancestry: parent_id },
  {id: 44, name: "レッグウェア", ancestry: parent_id },
  {id: 45, name: "アンダーウェア", ancestry: parent_id },
  {id: 46, name: "その他", ancestry: parent_id },
)

# 03 ベビー・キッズの子カテゴリー作成
parent_id = Category.find_by(name: "ベビー・キッズ").id
Category.seed(:id,
  {id: 47, name: "ベビー服(女の子用) ~95cm", ancestry: parent_id },
  {id: 48, name: "ベビー服(男の子用) ~95cm", ancestry: parent_id },
  {id: 49, name: "ベビー服(男女兼用) ~95cm", ancestry: parent_id },
  {id: 50, name: "キッズ服(女の子用) 100cm~", ancestry: parent_id },
  {id: 51, name: "キッズ服(男の子用) 100cm~", ancestry: parent_id },
  {id: 52, name: "キッズ服(男女兼用) 100cm~", ancestry: parent_id },
  {id: 53, name: "キッズ靴", ancestry: parent_id },
  {id: 54, name: "子ども用ファッション小物", ancestry: parent_id },
  {id: 55, name: "おむつ/トイレ/バス", ancestry: parent_id },
  {id: 56, name: "外出/移動用品", ancestry: parent_id },
  {id: 57, name: "授乳/食事", ancestry: parent_id },
  {id: 58, name: "ベビー家具/寝具/室内用品", ancestry: parent_id },
  {id: 59, name: "おもちゃ", ancestry: parent_id },
  {id: 60, name: "行事/記念品", ancestry: parent_id },
  {id: 61, name: "その他", ancestry: parent_id },
)

# 04 インテリア・住まい・小物の子カテゴリー作成
parent_id = Category.find_by(name: "インテリア・住まい・小物").id
Category.seed(:id,
  {id: 62, name: "キッチン/食器", ancestry: parent_id },
  {id: 63, name: "ベッド/マットレス", ancestry: parent_id },
  {id: 64, name: "ソファ/ソファベッド", ancestry: parent_id },
  {id: 65, name: "椅子/チェア", ancestry: parent_id },
  {id: 66, name: "机/テーブル", ancestry: parent_id },
  {id: 67, name: "収納家具", ancestry: parent_id },
  {id: 68, name: "ラグ/カーペット/マット", ancestry: parent_id },
  {id: 69, name: "カーテン/ブラインド", ancestry: parent_id },
  {id: 70, name: "ライト/照明", ancestry: parent_id },
  {id: 71, name: "寝具", ancestry: parent_id },
  {id: 72, name: "インテリア小物", ancestry: parent_id },
  {id: 73, name: "季節/年中行事", ancestry: parent_id },
  {id: 74, name: "その他", ancestry: parent_id },
)

# 05 本・音楽・ゲームの子カテゴリー作成
parent_id = Category.find_by(name: "本・音楽・ゲーム").id
Category.seed(:id,
  {id: 75, name: "本", ancestry: parent_id },
  {id: 76, name: "漫画", ancestry: parent_id },
  {id: 77, name: "雑誌", ancestry: parent_id },
  {id: 78, name: "CD", ancestry: parent_id },
  {id: 79, name: "DVD/ブルーレイ", ancestry: parent_id },
  {id: 80, name: "レコード", ancestry: parent_id },
  {id: 81, name: "テレビゲーム", ancestry: parent_id },
)

# 06 おもちゃ・ホビー・グッズの子カテゴリー作成
parent_id = Category.find_by(name: "おもちゃ・ホビー・グッズ").id
Category.seed(:id,
  {id: 82, name: "おもちゃ", ancestry: parent_id },
  {id: 83, name: "タレントグッズ", ancestry: parent_id },
  {id: 84, name: "コミック/アニメグッズ", ancestry: parent_id },
  {id: 85, name: "トレーディングカード", ancestry: parent_id },
  {id: 86, name: "フィギュア", ancestry: parent_id },
  {id: 87, name: "楽器/器材", ancestry: parent_id },
  {id: 88, name: "コレクション", ancestry: parent_id },
  {id: 89, name: "ミリタリー", ancestry: parent_id },
  {id: 90, name: "美術品", ancestry: parent_id },
  {id: 91, name: "アート用品", ancestry: parent_id },
  {id: 92, name: "その他", ancestry: parent_id },
)

# 07 コスメ・香水・美容の子カテゴリー作成
parent_id = Category.find_by(name: "コスメ・香水・美容").id
Category.seed(:id,
  {id: 93,  name: "ベースメイク", ancestry: parent_id },
  {id: 94,  name: "メイクアップ", ancestry: parent_id },
  {id: 95,  name: "ネイルケア", ancestry: parent_id },
  {id: 96,  name: "香水", ancestry: parent_id },
  {id: 97,  name: "スキンケア/基礎化粧品", ancestry: parent_id },
  {id: 98,  name: "ヘアケア", ancestry: parent_id },
  {id: 99,  name: "ボディケア", ancestry: parent_id },
  {id: 100, name: "オーラルケア", ancestry: parent_id },
  {id: 101, name: "リラクゼーション", ancestry: parent_id },
  {id: 102, name: "ダイエット", ancestry: parent_id },
  {id: 103, name: "その他", ancestry: parent_id },
)

# 08 家電・スマホ・カメラの子カテゴリー作成
parent_id = Category.find_by(name: "家電・スマホ・カメラ").id
Category.seed(:id,
  {id: 104,  name: "スマートフォン/携帯電話", ancestry: parent_id },
  {id: 105,  name: "スマホアクセサリー", ancestry: parent_id },
  {id: 106,  name: "PC/タブレット", ancestry: parent_id },
  {id: 107,  name: "カメラ", ancestry: parent_id },
  {id: 108,  name: "テレビ/映像機器", ancestry: parent_id },
  {id: 109,  name: "オーディオ機器", ancestry: parent_id },
  {id: 110,  name: "美容/健康", ancestry: parent_id },
  {id: 111,  name: "冷暖房/空調", ancestry: parent_id },
  {id: 112,  name: "生活家電", ancestry: parent_id },
  {id: 113,  name: "その他", ancestry: parent_id },
)

# 09 スポーツ・レジャーの子カテゴリー作成
parent_id = Category.find_by(name: "スポーツ・レジャー").id
Category.seed(:id,
  {id: 114,  name: "ゴルフ", ancestry: parent_id },
  {id: 115,  name: "フィッシング", ancestry: parent_id },
  {id: 116,  name: "自転車", ancestry: parent_id },
  {id: 117,  name: "トレーニング/エクササイズ", ancestry: parent_id },
  {id: 118,  name: "野球", ancestry: parent_id },
  {id: 119,  name: "サッカー/フットサル", ancestry: parent_id },
  {id: 120,  name: "テニス", ancestry: parent_id },
  {id: 121,  name: "スノーボード", ancestry: parent_id },
  {id: 122,  name: "スキー", ancestry: parent_id },
  {id: 123,  name: "その他スポーツ", ancestry: parent_id },
  {id: 124,  name: "アウトドア", ancestry: parent_id },
  {id: 125,  name: "その他", ancestry: parent_id },
)

# 10 ハンドメイドの子カテゴリー作成
parent_id = Category.find_by(name: "ハンドメイド").id
Category.seed(:id,
  {id: 126,  name: "アクセサリー(女性用)", ancestry: parent_id },
  {id: 127,  name: "ファッション/小物", ancestry: parent_id },
  {id: 128,  name: "アクセサリー/時計", ancestry: parent_id },
  {id: 129,  name: "日用品/インテリア", ancestry: parent_id },
  {id: 130,  name: "趣味/おもちゃ", ancestry: parent_id },
  {id: 131,  name: "キッズ/ベビー", ancestry: parent_id },
  {id: 132,  name: "素材/材料", ancestry: parent_id },
  {id: 133,  name: "二次創作物", ancestry: parent_id },
  {id: 134,  name: "その他", ancestry: parent_id },
)

# 11 チケットの子カテゴリー作成
parent_id = Category.find_by(name: "チケット").id
Category.seed(:id,
  {id: 135,  name: "音楽", ancestry: parent_id },
  {id: 136,  name: "スポーツ", ancestry: parent_id },
  {id: 137,  name: "演劇/芸能", ancestry: parent_id },
  {id: 138,  name: "イベント", ancestry: parent_id },
  {id: 139,  name: "映画", ancestry: parent_id },
  {id: 140,  name: "施設利用券", ancestry: parent_id },
  {id: 141,  name: "優待券/割引券", ancestry: parent_id },
  {id: 142,  name: "その他", ancestry: parent_id },
)

# 12 自動車・オートバイの子カテゴリー作成
parent_id = Category.find_by(name: "自動車・オートバイ").id
Category.seed(:id,
  {id: 143,  name: "自動車本体", ancestry: parent_id },
  {id: 144,  name: "自動車タイヤ/ホイール", ancestry: parent_id },
  {id: 145,  name: "自動車パーツ", ancestry: parent_id },
  {id: 146,  name: "自動車アクセサリー", ancestry: parent_id },
  {id: 147,  name: "オートバイ車体", ancestry: parent_id },
  {id: 148,  name: "オートバイパーツ", ancestry: parent_id },
  {id: 149,  name: "オートバイアクセサリー", ancestry: parent_id },
)

# 13 その他の子カテゴリー作成
parent_id = Category.find(13).id
Category.seed(:id,
  {id: 150,  name: "まとめ売り", ancestry: parent_id },
  {id: 151,  name: "ペット用品", ancestry: parent_id },
  {id: 152,  name: "食品", ancestry: parent_id },
  {id: 153,  name: "飲料/酒", ancestry: parent_id },
  {id: 154,  name: "日用品/生活雑貨/旅行", ancestry: parent_id },
  {id: 155,  name: "アンティーク/コレクション", ancestry: parent_id },
  {id: 156,  name: "文房具/事務用品", ancestry: parent_id },
  {id: 157,  name: "事務/店舗用品", ancestry: parent_id },
  {id: 158,  name: "その他", ancestry: parent_id },
)