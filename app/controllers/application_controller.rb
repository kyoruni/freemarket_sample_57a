class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?

  private

  # 本番環境でのみベーシック認証を行う記述
  def production?
    Rails.env.production?
  end

  #ベーシック認証用の記述
  def basic_auth 
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  # カテゴリー一覧の取得
  def set_category_list
    @categories = Category.order("id ASC")
  end

  # ブランド一覧の取得
  def set_brand_list
    @brands = Brand.where(name: ['シャネル', 'ナイキ', 'ルイ ヴィトン', 'シュプリーム', 'アディダス'])
  end

  def set_payjp_secret_key
    Payjp.api_key = Rails.application.credentials.payjp_secret_key
  end
end
