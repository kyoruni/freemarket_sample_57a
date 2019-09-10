crumb :root do
  link "メルカリ", root_path
end

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
