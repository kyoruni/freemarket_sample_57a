# 01 レディースの孫カテゴリー作成
# 01-01 レディース > トップス
# 01-02 レディース > ジャケット/アウター
# 01-03 レディース > パンツ
# 01-04 レディース > スカート
# 01-05 レディース > ワンピース
# 01-06 レディース > 靴
# 01-07 レディース > ルームウェア/パジャマ
# 01-08 レディース > レッグウェア
# 01-09 レディース > 帽子
# 01-10 レディース > バッグ
# 01-11 レディース > アクセサリー
# 01-12 レディース > ヘアアクセサリー
# 01-13 レディース > 小物
# 01-14 レディース > 時計
# 01-15 レディース > ウィッグ/エクステ
# 01-16 レディース > 浴衣/水着
# 01-17 レディース > スーツ/フォーマル/ドレス
# 01-18 レディース > マタニティ
# 01-19 レディース > その他
#############################################
# 02 メンズの孫カテゴリー作成
# 02-01 メンズ > トップス
# 02-02 メンズ > ジャケット/アウター
# 02-03 メンズ > パンツ
# 02-04 メンズ > 靴
# 02-05 メンズ > バッグ
# 02-06 メンズ > スーツ
# 02-07 メンズ > 帽子
# 02-08 メンズ > アクセサリー
# 02-09 メンズ > 小物
# 02-10 メンズ > 時計
# 02-11 メンズ > 水着
# 02-12 メンズ > レッグウェア
# 02-13 メンズ > アンダーウェア
# 02-14 メンズ > その他
#############################################
# 03 ベビー・キッズの孫カテゴリー作成
# 03-01 ベビー服(女の子用) ~95cm
# 03-02 ベビー服(男の子用) ~95cm
# 03-03 ベビー服(男女兼用) ~95cm
# 03-04 キッズ服(女の子用) 100cm~
# 03-05 キッズ服(男の子用) 100cm~
# 03-06 キッズ服(男女兼用) 100cm~
# 03-07 キッズ靴
# 03-08 子ども用ファッション小物
# 03-09 おむつ/トイレ/バス
# 03-10 外出/移動用品
# 03-11 授乳/食事
# 03-12 ベビー家具/寝具/室内用品
# 03-13 おもちゃ
# 03-14 行事/記念品
# 03-15 その他

# 01-01 レディース > トップス
parent_id = "1/14"
Category.seed(:id,
  {id: 159, name: "Tシャツ/カットソー(半袖/袖なし)", ancestry: parent_id },
  {id: 160, name: "Tシャツ/カットソー(七分/長袖)", ancestry: parent_id },
  {id: 161, name: "シャツ/ブラウス(半袖/袖なし)", ancestry: parent_id },
  {id: 162, name: "シャツ/ブラウス(七分/長袖)", ancestry: parent_id },
  {id: 163, name: "ポロシャツ", ancestry: parent_id },
  {id: 164, name: "キャミソール", ancestry: parent_id },
  {id: 165, name: "タンクトップ", ancestry: parent_id },
  {id: 166, name: "ホルターネック", ancestry: parent_id },
  {id: 167, name: "ニット/セーター", ancestry: parent_id },
  {id: 168, name: "チュニック", ancestry: parent_id },
  {id: 169, name: "カーディガン/ボレロ", ancestry: parent_id },
  {id: 170, name: "アンサンブル", ancestry: parent_id },
  {id: 171, name: "ベスト/ジレ", ancestry: parent_id },
  {id: 172, name: "パーカー", ancestry: parent_id },
  {id: 173, name: "トレーナー/スウェット", ancestry: parent_id },
  {id: 174, name: "ベアトップ/チューブトップ", ancestry: parent_id },
  {id: 175, name: "ジャージ", ancestry: parent_id },
  {id: 176, name: "その他", ancestry: parent_id },
)

# 01-02 レディース > ジャケット/アウター
parent_id = "1/15"
Category.seed(:id,
  {id: 177, name: "テーラードジャケット", ancestry: parent_id },
  {id: 178, name: "ノーカラージャケット", ancestry: parent_id },
  {id: 179, name: "Gジャン/デニムジャケット", ancestry: parent_id },
  {id: 180, name: "レザージャケット", ancestry: parent_id },
  {id: 181, name: "ダウンジャケット", ancestry: parent_id },
  {id: 182, name: "ライダースジャケット", ancestry: parent_id },
  {id: 183, name: "ミリタリージャケット", ancestry: parent_id },
  {id: 184, name: "ダウンベスト", ancestry: parent_id },
  {id: 185, name: "ジャンパー/ブルゾン", ancestry: parent_id },
  {id: 186, name: "ポンチョ", ancestry: parent_id },
  {id: 187, name: "ロングコート", ancestry: parent_id },
  {id: 188, name: "トレンチコート", ancestry: parent_id },
  {id: 189, name: "ダッフルコート", ancestry: parent_id },
  {id: 190, name: "ピーコート", ancestry: parent_id },
  {id: 191, name: "チェスターコート", ancestry: parent_id },
  {id: 192, name: "モッズコート", ancestry: parent_id },
  {id: 193, name: "スタジャン", ancestry: parent_id },
  {id: 194, name: "毛皮/ファーコート", ancestry: parent_id },
  {id: 195, name: "スプリングコート", ancestry: parent_id },
  {id: 196, name: "スカジャン", ancestry: parent_id },
  {id: 197, name: "その他", ancestry: parent_id },
)

# 01-03 レディース > パンツ
parent_id = "1/16"
Category.seed(:id,
  {id: 198, name: "デニム/ジーンズ", ancestry: parent_id },
  {id: 199, name: "ショートパンツ", ancestry: parent_id },
  {id: 200, name: "カジュアルパンツ", ancestry: parent_id },
  {id: 201, name: "ハーフパンツ", ancestry: parent_id },
  {id: 202, name: "チノパン", ancestry: parent_id },
  {id: 203, name: "ワークパンツ/カーゴパンツ", ancestry: parent_id },
  {id: 204, name: "クロップドパンツ", ancestry: parent_id },
  {id: 205, name: "サロペット/オーバーオール", ancestry: parent_id },
  {id: 206, name: "オールインワン", ancestry: parent_id },
  {id: 207, name: "サルエルパンツ", ancestry: parent_id },
  {id: 208, name: "ガウチョパンツ", ancestry: parent_id },
  {id: 209, name: "その他", ancestry: parent_id },
)

# 01-04 レディース > スカート
parent_id = "1/17"
Category.seed(:id,
  {id: 210, name: "ミニスカート", ancestry: parent_id },
  {id: 211, name: "ひざ丈スカート", ancestry: parent_id },
  {id: 212, name: "ロングスカート", ancestry: parent_id },
  {id: 213, name: "キュロット", ancestry: parent_id },
  {id: 214, name: "その他", ancestry: parent_id },
)

# 01-05 レディース > ワンピース
parent_id = "1/18"
Category.seed(:id,
  {id: 215, name: "ミニワンピース", ancestry: parent_id },
  {id: 216, name: "ひざ丈ワンピース", ancestry: parent_id },
  {id: 217, name: "ロングワンピース", ancestry: parent_id },
  {id: 218, name: "その他", ancestry: parent_id },
)

# 01-06 レディース > 靴
parent_id = "1/19"
Category.seed(:id,
  {id: 219, name: "ハイヒール/パンプス", ancestry: parent_id },
  {id: 220, name: "ブーツ", ancestry: parent_id },
  {id: 221, name: "サンダル", ancestry: parent_id },
  {id: 222, name: "スニーカー", ancestry: parent_id },
  {id: 223, name: "ミュール", ancestry: parent_id },
  {id: 224, name: "モカシン", ancestry: parent_id },
  {id: 225, name: "ローファー/革靴", ancestry: parent_id },
  {id: 226, name: "フラットシューズ/バレエシューズ", ancestry: parent_id },
  {id: 227, name: "長靴/レインシューズ", ancestry: parent_id },
  {id: 228, name: "その他", ancestry: parent_id },
)

# 01-07 レディース > ルームウェア/パジャマ
parent_id = "1/20"
Category.seed(:id,
  {id: 229, name: "パジャマ", ancestry: parent_id },
  {id: 230, name: "ルームウェア", ancestry: parent_id },
)

# 01-08 レディース > レッグウェア
parent_id = "1/21"
Category.seed(:id,
  {id: 231, name: "ソックス", ancestry: parent_id },
  {id: 232, name: "スパッツ/レギンス", ancestry: parent_id },
  {id: 233, name: "ストッキング/タイツ", ancestry: parent_id },
  {id: 234, name: "レッグウォーマー", ancestry: parent_id },
  {id: 235, name: "その他", ancestry: parent_id },
)

# 01-09 レディース > 帽子
parent_id = "1/22"
Category.seed(:id,
  {id: 236, name: "ニットキャップ/ビーニー", ancestry: parent_id },
  {id: 237, name: "ハット", ancestry: parent_id },
  {id: 238, name: "ハンチング/ベレー帽", ancestry: parent_id },
  {id: 239, name: "キャップ", ancestry: parent_id },
  {id: 240, name: "キャスケット", ancestry: parent_id },
  {id: 241, name: "麦わら帽子", ancestry: parent_id },
  {id: 242, name: "その他", ancestry: parent_id },
)

# 01-10 レディース > バッグ
parent_id = "1/23"
Category.seed(:id,
  {id: 243, name: "ハンドバッグ", ancestry: parent_id },
  {id: 244, name: "トートバッグ", ancestry: parent_id },
  {id: 245, name: "エコバッグ", ancestry: parent_id },
  {id: 246, name: "リュック/バックパック", ancestry: parent_id },
  {id: 247, name: "ボストンバッグ", ancestry: parent_id },
  {id: 248, name: "スポーツバッグ", ancestry: parent_id },
  {id: 249, name: "ショルダーバッグ", ancestry: parent_id },
  {id: 250, name: "クラッチバッグ", ancestry: parent_id },
  {id: 251, name: "ポーチ/バニティ", ancestry: parent_id },
  {id: 252, name: "ボディバッグ/ウェストバッグ", ancestry: parent_id },
  {id: 253, name: "マザーズバッグ", ancestry: parent_id },
  {id: 254, name: "メッセンジャーバッグ", ancestry: parent_id },
  {id: 255, name: "ビジネスバッグ", ancestry: parent_id },
  {id: 256, name: "旅行用バッグ/キャリーバッグ", ancestry: parent_id },
  {id: 257, name: "ショップ袋", ancestry: parent_id },
  {id: 258, name: "和装用バッグ", ancestry: parent_id },
  {id: 259, name: "かごバッグ", ancestry: parent_id },
  {id: 260, name: "その他", ancestry: parent_id },
)

# 01-11 レディース > アクセサリー
parent_id = "1/24"
Category.seed(:id,
  {id: 261, name: "ネックレス", ancestry: parent_id },
  {id: 262, name: "ブレスレット", ancestry: parent_id },
  {id: 263, name: "バングル/リストバンド", ancestry: parent_id },
  {id: 264, name: "リング", ancestry: parent_id },
  {id: 265, name: "ピアス(片耳用)", ancestry: parent_id },
  {id: 266, name: "ピアス(両耳用)", ancestry: parent_id },
  {id: 267, name: "イヤリング", ancestry: parent_id },
  {id: 268, name: "アンクレット", ancestry: parent_id },
  {id: 269, name: "ブローチ/コサージュ", ancestry: parent_id },
  {id: 270, name: "チャーム", ancestry: parent_id },
  {id: 271, name: "その他", ancestry: parent_id },
)

# 01-12 レディース > ヘアアクセサリー
parent_id = "1/25"
Category.seed(:id,
  {id: 272, name: "ヘアゴム/シュシュ", ancestry: parent_id },
  {id: 273, name: "ヘアバンド/カチューシャ", ancestry: parent_id },
  {id: 274, name: "ヘアピン", ancestry: parent_id },
  {id: 275, name: "その他", ancestry: parent_id },
)

# 01-13 レディース > 小物
parent_id = "1/26"
Category.seed(:id,
  {id: 276, name: "長財布", ancestry: parent_id },
  {id: 277, name: "折り財布", ancestry: parent_id },
  {id: 278, name: "コインケース/小銭入れ", ancestry: parent_id },
  {id: 279, name: "名刺入れ/定期入れ", ancestry: parent_id },
  {id: 280, name: "キーケース", ancestry: parent_id },
  {id: 281, name: "キーホルダー", ancestry: parent_id },
  {id: 282, name: "手袋/アームカバー", ancestry: parent_id },
  {id: 283, name: "ハンカチ", ancestry: parent_id },
  {id: 284, name: "ベルト", ancestry: parent_id },
  {id: 285, name: "マフラー/ショール", ancestry: parent_id },
  {id: 286, name: "ストール/スヌード", ancestry: parent_id },
  {id: 287, name: "バンダナ/スカーフ", ancestry: parent_id },
  {id: 288, name: "ネックウォーマー", ancestry: parent_id },
  {id: 289, name: "サスペンダー", ancestry: parent_id },
  {id: 290, name: "サングラス/メガネ", ancestry: parent_id },
  {id: 291, name: "モバイルケース/カバー", ancestry: parent_id },
  {id: 292, name: "手帳", ancestry: parent_id },
  {id: 293, name: "イヤマフラー", ancestry: parent_id },
  {id: 294, name: "傘", ancestry: parent_id },
  {id: 295, name: "レインコート/ポンチョ", ancestry: parent_id },
  {id: 296, name: "ミラー", ancestry: parent_id },
  {id: 297, name: "タバコグッズ", ancestry: parent_id },
  {id: 298, name: "その他", ancestry: parent_id },
)

# 01-14 レディース > 時計
parent_id = "1/27"
Category.seed(:id,
  {id: 299, name: "腕時計(アナログ)", ancestry: parent_id },
  {id: 300, name: "腕時計(デジタル)", ancestry: parent_id },
  {id: 301, name: "ラバーベルト", ancestry: parent_id },
  {id: 302, name: "レザーベルト", ancestry: parent_id },
  {id: 303, name: "金属ベルト", ancestry: parent_id },
  {id: 304, name: "その他", ancestry: parent_id },
)

# 01-15 レディース > ウィッグ/エクステ
parent_id = "1/28"
Category.seed(:id,
  {id: 305, name: "前髪ウィッグ", ancestry: parent_id },
  {id: 306, name: "ロングストレート", ancestry: parent_id },
  {id: 307, name: "ロングカール", ancestry: parent_id },
  {id: 308, name: "ショートストレート", ancestry: parent_id },
  {id: 309, name: "ショートカール", ancestry: parent_id },
  {id: 310, name: "その他", ancestry: parent_id },
)

# 01-16 レディース > 浴衣/水着
parent_id = "1/29"
Category.seed(:id,
  {id: 311, name: "浴衣", ancestry: parent_id },
  {id: 312, name: "着物", ancestry: parent_id },
  {id: 313, name: "振袖", ancestry: parent_id },
  {id: 314, name: "長襦袢/半襦袢", ancestry: parent_id },
  {id: 315, name: "水着セパレート", ancestry: parent_id },
  {id: 316, name: "水着ワンピース", ancestry: parent_id },
  {id: 317, name: "水着スポーツ用", ancestry: parent_id },
  {id: 318, name: "その他", ancestry: parent_id },
)

# 01-17 レディース > スーツ/フォーマル/ドレス
parent_id = "1/30"
Category.seed(:id,
  {id: 319, name: "スカートスーツ上下", ancestry: parent_id },
  {id: 320, name: "パンツスーツ上下", ancestry: parent_id },
  {id: 321, name: "ドレス", ancestry: parent_id },
  {id: 322, name: "パーティーバッグ", ancestry: parent_id },
  {id: 323, name: "シューズ", ancestry: parent_id },
  {id: 324, name: "ウェディング", ancestry: parent_id },
  {id: 325, name: "その他", ancestry: parent_id },
)

# 01-18 レディース > マタニティ
parent_id = "1/31"
Category.seed(:id,
  {id: 326, name: "トップス", ancestry: parent_id },
  {id: 327, name: "アウター", ancestry: parent_id },
  {id: 328, name: "インナー", ancestry: parent_id },
  {id: 329, name: "ワンピース", ancestry: parent_id },
  {id: 330, name: "パンツ/スパッツ", ancestry: parent_id },
  {id: 331, name: "スカート", ancestry: parent_id },
  {id: 332, name: "パジャマ", ancestry: parent_id },
  {id: 333, name: "授乳服", ancestry: parent_id },
  {id: 334, name: "その他", ancestry: parent_id },
)

# 01-19 レディース > その他
parent_id = "1/32"
Category.seed(:id,
  {id: 335, name: "コスプレ", ancestry: parent_id },
  {id: 336, name: "下着", ancestry: parent_id },
  {id: 337, name: "その他", ancestry: parent_id },
)

# 02-01 メンズ > トップス
parent_id = "2/33"
Category.seed(:id,
  {id: 338, name: "Tシャツ/カットソー(半袖/袖なし)", ancestry: parent_id },
  {id: 339, name: "Tシャツ/カットソー(七分/長袖)", ancestry: parent_id },
  {id: 340, name: "シャツ", ancestry: parent_id },
  {id: 341, name: "ポロシャツ", ancestry: parent_id },
  {id: 342, name: "タンクトップ", ancestry: parent_id },
  {id: 343, name: "ニット/セーター", ancestry: parent_id },
  {id: 344, name: "パーカー", ancestry: parent_id },
  {id: 345, name: "カーディガン", ancestry: parent_id },
  {id: 346, name: "スウェット", ancestry: parent_id },
  {id: 347, name: "ジャージ", ancestry: parent_id },
  {id: 348, name: "ベスト", ancestry: parent_id },
  {id: 349, name: "その他", ancestry: parent_id },
)

# 02-02 メンズ > ジャケット/アウター
parent_id = "2/34"
Category.seed(:id,
  {id: 350, name: "テーラードジャケット", ancestry: parent_id },
  {id: 351, name: "ノーカラージャケット", ancestry: parent_id },
  {id: 352, name: "Gジャン/デニムジャケット", ancestry: parent_id },
  {id: 353, name: "レザージャケット", ancestry: parent_id },
  {id: 354, name: "ダウンジャケット", ancestry: parent_id },
  {id: 355, name: "ライダースジャケット", ancestry: parent_id },
  {id: 356, name: "ミリタリージャケット", ancestry: parent_id },
  {id: 357, name: "ナイロンジャケット", ancestry: parent_id },
  {id: 358, name: "フライトジャケット", ancestry: parent_id },
  {id: 359, name: "ダッフルコート", ancestry: parent_id },
  {id: 360, name: "ピーコート", ancestry: parent_id },
  {id: 361, name: "ステンカラーコート", ancestry: parent_id },
  {id: 362, name: "トレンチコート", ancestry: parent_id },
  {id: 363, name: "モッズコート", ancestry: parent_id },
  {id: 364, name: "チェスターコート", ancestry: parent_id },
  {id: 365, name: "スタジャン", ancestry: parent_id },
  {id: 366, name: "スカジャン", ancestry: parent_id },
  {id: 367, name: "ブルゾン", ancestry: parent_id },
  {id: 368, name: "マウンテンパーカー", ancestry: parent_id },
  {id: 369, name: "ダウンベスト", ancestry: parent_id },
  {id: 370, name: "ポンチョ", ancestry: parent_id },
  {id: 371, name: "カバーオール", ancestry: parent_id },
  {id: 372, name: "その他", ancestry: parent_id },
)

# 02-03 メンズ > パンツ
parent_id = "2/35"
Category.seed(:id,
  {id: 373, name: "パンツ", ancestry: parent_id },
  {id: 374, name: "デニム/ジーンズ", ancestry: parent_id },
  {id: 375, name: "ワークパンツ/カーゴパンツ", ancestry: parent_id },
  {id: 376, name: "スラックス", ancestry: parent_id },
  {id: 377, name: "チノパン", ancestry: parent_id },
  {id: 378, name: "ショートパンツ", ancestry: parent_id },
  {id: 379, name: "ペインターパンツ", ancestry: parent_id },
  {id: 380, name: "サルエルパンツ", ancestry: parent_id },
  {id: 381, name: "オーバーオール", ancestry: parent_id },
  {id: 382, name: "その他", ancestry: parent_id },
)

# 02-04 メンズ > 靴
parent_id = "2/36"
Category.seed(:id,
  {id: 383, name: "スニーカー", ancestry: parent_id },
  {id: 384, name: "サンダル", ancestry: parent_id },
  {id: 385, name: "ブーツ", ancestry: parent_id },
  {id: 386, name: "モカシン", ancestry: parent_id },
  {id: 387, name: "ドレス/ビジネス", ancestry: parent_id },
  {id: 388, name: "長靴/レインシューズ", ancestry: parent_id },
  {id: 389, name: "デッキシューズ", ancestry: parent_id },
  {id: 390, name: "その他", ancestry: parent_id },
)

# 02-05 メンズ > バッグ
parent_id = "2/37"
Category.seed(:id,
  {id: 391, name: "ショルダーバッグ", ancestry: parent_id },
  {id: 392, name: "トートバッグ", ancestry: parent_id },
  {id: 393, name: "ボストンバッグ", ancestry: parent_id },
  {id: 394, name: "リュック/バックパック", ancestry: parent_id },
  {id: 395, name: "ウエストポーチ", ancestry: parent_id },
  {id: 396, name: "ボディーバッグ", ancestry: parent_id },
  {id: 397, name: "ドラムバッグ", ancestry: parent_id },
  {id: 398, name: "ビジネスバッグ", ancestry: parent_id },
  {id: 399, name: "トラベルバッグ", ancestry: parent_id },
  {id: 400, name: "メッセンジャーバッグ", ancestry: parent_id },
  {id: 401, name: "エコバッグ", ancestry: parent_id },
  {id: 402, name: "その他", ancestry: parent_id },
)

# 02-06 メンズ > スーツ
parent_id = "2/38"
Category.seed(:id,
  {id: 403, name: "スーツジャケット", ancestry: parent_id },
  {id: 404, name: "スーツベスト", ancestry: parent_id },
  {id: 405, name: "スラックス", ancestry: parent_id },
  {id: 406, name: "セットアップ", ancestry: parent_id },
  {id: 407, name: "その他", ancestry: parent_id },
)

# 02-07 メンズ > 帽子
parent_id = "2/39"
Category.seed(:id,
  {id: 408, name: "キャップ", ancestry: parent_id },
  {id: 409, name: "ハット", ancestry: parent_id },
  {id: 410, name: "ニットキャップ/ビーニー", ancestry: parent_id },
  {id: 411, name: "ハンチング/ベレー帽", ancestry: parent_id },
  {id: 412, name: "キャスケット", ancestry: parent_id },
  {id: 413, name: "サンバイザー", ancestry: parent_id },
  {id: 414, name: "その他", ancestry: parent_id },
)

# 02-08 メンズ > アクセサリー
parent_id = "2/40"
Category.seed(:id,
  {id: 415, name: "ネックレス", ancestry: parent_id },
  {id: 416, name: "ブレスレット", ancestry: parent_id },
  {id: 417, name: "バングル/リストバンド", ancestry: parent_id },
  {id: 418, name: "リング", ancestry: parent_id },
  {id: 419, name: "ピアス(片耳用)", ancestry: parent_id },
  {id: 420, name: "ピアス(両耳用)", ancestry: parent_id },
  {id: 421, name: "アンクレット", ancestry: parent_id },
  {id: 422, name: "その他", ancestry: parent_id },
)

# 02-09 メンズ > 小物
parent_id = "2/41"
Category.seed(:id,
  {id: 423, name: "長財布", ancestry: parent_id },
  {id: 424, name: "折り財布", ancestry: parent_id },
  {id: 425, name: "マネークリップ", ancestry: parent_id },
  {id: 426, name: "コインケース/小銭入れ", ancestry: parent_id },
  {id: 427, name: "名刺入れ/定期入れ", ancestry: parent_id },
  {id: 428, name: "キーケース", ancestry: parent_id },
  {id: 429, name: "キーホルダー", ancestry: parent_id },
  {id: 430, name: "ネクタイ", ancestry: parent_id },
  {id: 431, name: "手袋", ancestry: parent_id },
  {id: 432, name: "ハンカチ", ancestry: parent_id },
  {id: 433, name: "ベルト", ancestry: parent_id },
  {id: 434, name: "マフラー", ancestry: parent_id },
  {id: 435, name: "ストール", ancestry: parent_id },
  {id: 436, name: "バンダナ", ancestry: parent_id },
  {id: 437, name: "ネックウォーマー", ancestry: parent_id },
  {id: 438, name: "サスペンダー", ancestry: parent_id },
  {id: 439, name: "ウォレットチェーン", ancestry: parent_id },
  {id: 440, name: "サングラス/メガネ", ancestry: parent_id },
  {id: 441, name: "モバイルケース/カバー", ancestry: parent_id },
  {id: 442, name: "手帳", ancestry: parent_id },
  {id: 443, name: "ストラップ", ancestry: parent_id },
  {id: 444, name: "ネクタイピン", ancestry: parent_id },
  {id: 445, name: "カフリンクス", ancestry: parent_id },
  {id: 446, name: "イヤマフラー", ancestry: parent_id },
  {id: 447, name: "傘", ancestry: parent_id },
  {id: 448, name: "レインコート", ancestry: parent_id },
  {id: 449, name: "ミラー", ancestry: parent_id },
  {id: 450, name: "タバコグッズ", ancestry: parent_id },
  {id: 451, name: "その他", ancestry: parent_id },
)

# 02-10 メンズ > 時計
parent_id = "2/42"
Category.seed(:id,
  {id: 452, name: "腕時計(アナログ)", ancestry: parent_id },
  {id: 453, name: "腕時計(デジタル)", ancestry: parent_id },
  {id: 454, name: "ラバーベルト", ancestry: parent_id },
  {id: 455, name: "レザーベルト", ancestry: parent_id },
  {id: 456, name: "金属ベルト", ancestry: parent_id },
  {id: 457, name: "その他", ancestry: parent_id },
)

# 02-11 メンズ > 水着
parent_id = "2/43"
Category.seed(:id,
  {id: 458, name: "一般水着", ancestry: parent_id },
  {id: 459, name: "スポーツ用", ancestry: parent_id },
  {id: 460, name: "アクセサリー", ancestry: parent_id },
  {id: 461, name: "その他", ancestry: parent_id },
)

# 02-12 メンズ > レッグウェア
parent_id = "2/44"
Category.seed(:id,
  {id: 462, name: "ソックス", ancestry: parent_id },
  {id: 463, name: "レギンス/スパッツ", ancestry: parent_id },
  {id: 464, name: "レッグウォーマー", ancestry: parent_id },
  {id: 465, name: "その他", ancestry: parent_id },
)

# 02-13 メンズ > アンダーウェア
parent_id = "2/45"
Category.seed(:id,
  {id: 466, name: "トランクス", ancestry: parent_id },
  {id: 467, name: "ボクサーパンツ", ancestry: parent_id },
  {id: 468, name: "その他", ancestry: parent_id },
)

# 03-01 ベビー服(女の子用) ~95cm
parent_id = "3/47"
Category.seed(:id,
  {id: 469, name: "トップス", ancestry: parent_id },
  {id: 470, name: "アウター", ancestry: parent_id },
  {id: 471, name: "パンツ", ancestry: parent_id },
  {id: 472, name: "スカート", ancestry: parent_id },
  {id: 473, name: "ワンピース", ancestry: parent_id },
  {id: 474, name: "ベビードレス", ancestry: parent_id },
  {id: 475, name: "おくるみ", ancestry: parent_id },
  {id: 476, name: "下着/肌着", ancestry: parent_id },
  {id: 477, name: "パジャマ", ancestry: parent_id },
  {id: 478, name: "ロンパース", ancestry: parent_id },
  {id: 479, name: "その他", ancestry: parent_id },
)

# 03-02 ベビー服(男の子用) ~95cm
parent_id = "3/48"
Category.seed(:id,
  {id: 480, name: "トップス", ancestry: parent_id },
  {id: 481, name: "アウター", ancestry: parent_id },
  {id: 482, name: "パンツ", ancestry: parent_id },
  {id: 483, name: "おくるみ", ancestry: parent_id },
  {id: 484, name: "下着/肌着", ancestry: parent_id },
  {id: 485, name: "パジャマ", ancestry: parent_id },
  {id: 486, name: "ロンパース", ancestry: parent_id },
  {id: 487, name: "その他", ancestry: parent_id },
)

# 03-03 ベビー服(男女兼用) ~95cm
parent_id = "3/49"
Category.seed(:id,
  {id: 488, name: "トップス", ancestry: parent_id },
  {id: 489, name: "アウター", ancestry: parent_id },
  {id: 490, name: "パンツ", ancestry: parent_id },
  {id: 491, name: "おくるみ", ancestry: parent_id },
  {id: 492, name: "下着/肌着", ancestry: parent_id },
  {id: 493, name: "パジャマ", ancestry: parent_id },
  {id: 494, name: "ロンパース", ancestry: parent_id },
  {id: 495, name: "その他", ancestry: parent_id },
)

# 03-04 キッズ服(女の子用) 100cm~
parent_id = "3/50"
Category.seed(:id,
  {id: 496, name: "コート", ancestry: parent_id },
  {id: 497, name: "ジャケット/上着", ancestry: parent_id },
  {id: 498, name: "トップス(Tシャツ/カットソー)", ancestry: parent_id },
  {id: 499, name: "トップス(トレーナー)", ancestry: parent_id },
  {id: 500, name: "トップス(チュニック)", ancestry: parent_id },
  {id: 501, name: "トップス(タンクトップ)", ancestry: parent_id },
  {id: 502, name: "トップス(その他)", ancestry: parent_id },
  {id: 503, name: "スカート", ancestry: parent_id },
  {id: 504, name: "パンツ", ancestry: parent_id },
  {id: 505, name: "ワンピース", ancestry: parent_id },
  {id: 506, name: "セットアップ", ancestry: parent_id },
  {id: 507, name: "パジャマ", ancestry: parent_id },
  {id: 508, name: "フォーマル/ドレス", ancestry: parent_id },
  {id: 509, name: "和服", ancestry: parent_id },
  {id: 510, name: "浴衣", ancestry: parent_id },
  {id: 511, name: "甚平", ancestry: parent_id },
  {id: 512, name: "水着", ancestry: parent_id },
  {id: 513, name: "その他", ancestry: parent_id },
)

# 03-05 キッズ服(男の子用) 100cm~
parent_id = "3/51"
Category.seed(:id,
  {id: 514, name: "コート", ancestry: parent_id },
  {id: 515, name: "ジャケット/上着", ancestry: parent_id },
  {id: 516, name: "トップス(Tシャツ/カットソー)", ancestry: parent_id },
  {id: 517, name: "トップス(トレーナー)", ancestry: parent_id },
  {id: 518, name: "トップス(その他)", ancestry: parent_id },
  {id: 519, name: "パンツ", ancestry: parent_id },
  {id: 520, name: "セットアップ", ancestry: parent_id },
  {id: 521, name: "パジャマ", ancestry: parent_id },
  {id: 522, name: "フォーマル/ドレス", ancestry: parent_id },
  {id: 523, name: "和服", ancestry: parent_id },
  {id: 524, name: "浴衣", ancestry: parent_id },
  {id: 525, name: "甚平", ancestry: parent_id },
  {id: 526, name: "水着", ancestry: parent_id },
  {id: 527, name: "その他", ancestry: parent_id },
)

# 03-06 キッズ服(男女兼用) 100cm~
parent_id = "3/52"
Category.seed(:id,
  {id: 528, name: "コート", ancestry: parent_id },
  {id: 529, name: "ジャケット/上着", ancestry: parent_id },
  {id: 530, name: "トップス(Tシャツ/カットソー)", ancestry: parent_id },
  {id: 531, name: "トップス(トレーナー)", ancestry: parent_id },
  {id: 532, name: "トップス(その他)", ancestry: parent_id },
  {id: 533, name: "ボトムス", ancestry: parent_id },
  {id: 534, name: "パジャマ", ancestry: parent_id },
  {id: 535, name: "その他", ancestry: parent_id },
)

# 03-07 キッズ靴
parent_id = "3/53"
Category.seed(:id,
  {id: 536, name: "スニーカー", ancestry: parent_id },
  {id: 537, name: "サンダル", ancestry: parent_id },
  {id: 538, name: "ブーツ", ancestry: parent_id },
  {id: 539, name: "長靴", ancestry: parent_id },
  {id: 540, name: "その他", ancestry: parent_id },
)

# 03-08 子ども用ファッション小物
parent_id = "3/54"
Category.seed(:id,
  {id: 541, name: "靴下/スパッツ", ancestry: parent_id },
  {id: 542, name: "帽子", ancestry: parent_id },
  {id: 543, name: "エプロン", ancestry: parent_id },
  {id: 544, name: "サスペンダー", ancestry: parent_id },
  {id: 545, name: "タイツ", ancestry: parent_id },
  {id: 546, name: "ハンカチ", ancestry: parent_id },
  {id: 547, name: "バンダナ", ancestry: parent_id },
  {id: 548, name: "ベルト", ancestry: parent_id },
  {id: 549, name: "マフラー", ancestry: parent_id },
  {id: 550, name: "傘", ancestry: parent_id },
  {id: 551, name: "手袋", ancestry: parent_id },
  {id: 552, name: "スタイ", ancestry: parent_id },
  {id: 553, name: "バッグ", ancestry: parent_id },
  {id: 554, name: "その他", ancestry: parent_id },
)

# 03-09 おむつ/トイレ/バス
parent_id = "3/55"
Category.seed(:id,
  {id: 555, name: "おむつ用品", ancestry: parent_id },
  {id: 556, name: "おまる/補助便座", ancestry: parent_id },
  {id: 557, name: "トレーニングパンツ", ancestry: parent_id },
  {id: 558, name: "ベビーバス", ancestry: parent_id },
  {id: 559, name: "お風呂用品", ancestry: parent_id },
  {id: 560, name: "その他", ancestry: parent_id },
)

# 03-10 外出/移動用品
parent_id = "3/56"
Category.seed(:id,
  {id: 561, name: "ベビーカー", ancestry: parent_id },
  {id: 562, name: "抱っこひも/スリング", ancestry: parent_id },
  {id: 563, name: "チャイルドシート", ancestry: parent_id },
  {id: 564, name: "その他", ancestry: parent_id },
)

# 03-11 授乳/食事
parent_id = "3/57"
Category.seed(:id,
  {id: 565, name: "ミルク", ancestry: parent_id },
  {id: 566, name: "ベビーフード", ancestry: parent_id },
  {id: 567, name: "ベビー用食器", ancestry: parent_id },
  {id: 568, name: "その他", ancestry: parent_id },
)

# 03-12 ベビー家具/寝具/室内用品
parent_id = "3/58"
Category.seed(:id,
  {id: 569, name: "ベッド", ancestry: parent_id },
  {id: 570, name: "布団/毛布", ancestry: parent_id },
  {id: 571, name: "イス", ancestry: parent_id },
  {id: 572, name: "たんす", ancestry: parent_id },
  {id: 573, name: "その他", ancestry: parent_id },
)

# 03-13 おもちゃ
parent_id = "3/59"
Category.seed(:id,
  {id: 574, name: "おふろのおもちゃ", ancestry: parent_id },
  {id: 575, name: "がらがら", ancestry: parent_id },
  {id: 576, name: "オルゴール", ancestry: parent_id },
  {id: 577, name: "ベビージム", ancestry: parent_id },
  {id: 578, name: "手押し車/カタカタ", ancestry: parent_id },
  {id: 579, name: "知育玩具", ancestry: parent_id },
  {id: 580, name: "その他", ancestry: parent_id },
)

# 03-14 行事/記念品
parent_id = "3/60"
Category.seed(:id,
  {id: 581, name: "お宮参り用品", ancestry: parent_id },
  {id: 582, name: "お食い初め用品", ancestry: parent_id },
  {id: 583, name: "アルバム", ancestry: parent_id },
  {id: 584, name: "手形/足形", ancestry: parent_id },
  {id: 585, name: "その他", ancestry: parent_id },
)

# 03-15 その他
parent_id = "3/61"
Category.seed(:id,
  {id: 586, name: "母子手帳用品", ancestry: parent_id },
  {id: 587, name: "その他", ancestry: parent_id },
)