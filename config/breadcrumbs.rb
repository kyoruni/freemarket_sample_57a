# crumb :root do
#   link "Home", root_path
# end

# # user#index
# crumb :users do
#   link "Users", users_path
#   parent :root
# end

# # user#show
# crumb :show_user do |user|
#   link "本人情報の登録", user
#   parent :users
# end

# # user#edit
# crumb :edit_user do |user|
#   link "Edit #{user.name}", edit_user_path(user)
#   parent :show_user, user
# end

# # user#new
# crumb :new_user do |user|
#   link "New User", new_user_path(user)
#   parent :users
# end

crumb :root do
  link "メルカリ", root_path
end

# マイページ
crumb :mypage do
  link "マイページ", '/users/show'
  parent :root
end

# 本人情報の登録
crumb :personal_info_regist do |user|
  link "本人情報の登録", step6_path(current_user)
  parent :mypage
end

# ログアウち
crumb :logout do |user|
  link "ログアウト", step7_path(current_user)
  parent :mypage
end

# クレジットカード登録
crumb :card_registration do |user|
  link "支払い方法", card_registration_path(current_user)
  parent :mypage
end

crumb :tag do |tag|
  if current_page?(step6_path)
    show_post_tag_id = TagMap.find_by(post_id: params[:id]).tag_id
    show_post_tag = Tag.find_by(id: show_post_tag_id)
    link show_post_tag.name
  else
    tag_page = Tag.find_by(id: params[:id])
    link tag_page.name
  end
  parent :root
end



# # user#show
# crumb :show_user do |user|
#   link user.name, user
#   parent :users
# end

# # user#edit
# crumb :edit_user do |user|
#   link "Edit #{user.name}", edit_user_path(user)
#   parent :show_user, user
# end

# # user#new
# crumb :new_user do
#   link "New User", new_user_path
#   parent :users
# end





# # プロフィール編集
# crumb :mypage do
#   link "プロフィール", '//'
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).







# crumb :root do
#   link "Home", root_path
# end

# crumb :tag do |tag|
#   if current_page?(:controller => 'post', :action => 'show')
#     show_post_tag_id = TagMap.find_by(post_id: params[:id]).tag_id
#     show_post_tag = Tag.find_by(id: show_post_tag_id)
#     link show_post_tag.name
#   else
#     tag_page = Tag.find_by(id: params[:id])
#     link tag_page.name
#   end
#   parent :root
# end

# crumb :show_title do |show_title|
#   show_title = Post.find_by(id: params[:id])
#   link show_title.title
#   parent :tag
# end


# if value > 0 then
#   puts "値は正です"
# elsif value < 0 then
#   puts "値は負です"
# else
#   puts "値は0です"
# end


