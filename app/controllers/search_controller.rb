class SearchController < ApplicationController
  before_action :set_category_list, only: [:index]
  before_action :set_brand_list,    only: [:index]
  def index
    # 検索ワードが入力されていたら、検索
    @items     = Item.where('name LIKE(?)', "%#{params[:keyword]}%").order("created_at DESC") unless params[:keyword].empty?
    # 検索結果がなければ、新着商品を取得
    @new_items = Item.order("created_at DESC") unless @items.present?

    @keyword   = params[:keyword]
  end
end
