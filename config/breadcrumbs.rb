crumb :root do
  link "メルカリ", root_path
end

# マイページ
crumb :mypage do
  link "マイページ", '/users/show'
  parent :root
end

crumb :personal_info_regist do 
  if current_page?(identification_path)
    link "本人情報の登録", identification_path(current_user)
    parent :mypage
  elsif current_page?(step5_signup_index_path)
    link "ログアウト", step5_signup_index_path
    parent :mypage
  elsif current_page?(card_registration_path)
    link "支払い方法", card_registration_path
    parent :mypage
  else
    link "マイページ", '/users/show'
    parent :root
  end
end

# 商品詳細
crumb :item do |item|
  link item.name, root_path
  parent :root
end

# カテゴリー一覧
crumb :category_index do
  link "カテゴリー一覧", root_path
end

crumb :category do |category|
  # 親カテゴリー
  if category.is_root?
    link category.name, category_path(category.id)
    parent :category_index
  # 子カテゴリー
  elsif category.has_children?
    link category.parent.name, category_path(category.parent.id)
    link category.name,        category_path(category.id)
    parent :category_index
  # 孫カテゴリー
  else
    link category.root.name,   category_path(category.root.id)
    link category.parent.name, category_path(category.parent.id)
    link category.name,        category_path(category.id)
    parent :category_index
  end
end

# 検索画面
crumb :search do |keyword|
  link keyword, search_index_path(keyword)
  parent :root
end
