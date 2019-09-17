class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :identification]
  before_action :move_to_mypage,     only: [:show, :identification]
  before_action :set_category_list,  only: [:show, :identification]
  before_action :set_brand_list,     only: [:show, :identification]

  def show
    @nickname = current_user.name
  end

  def destroy
  end

  def identification
  end

  private
  # 自分以外のマイページに入れないようにする
  def move_to_mypage
    redirect_to user_path(current_user.id) unless current_user.id == params[:id].to_i
  end
end
