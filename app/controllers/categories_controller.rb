class CategoriesController < ApplicationController
  before_action :set_category_list, only: [:show]
  def show

    @category = Category.find(params[:id])
    @category_items = Item.includes(:images).where(category_id: @category.id ).order('created_at DESC')
    # ランダムで子カテゴリーを9件＆孫カテゴリーを2件取得
    @category_list = @category.children.order("RAND()").limit(9) | @category.indirects.order("RAND()").limit(2)
  end
end
