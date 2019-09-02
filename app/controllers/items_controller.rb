class ItemsController < ApplicationController
  before_action :set_category_list, only: [:index, :show]

  def show
    @item = Item.find(params[:id])
    @items = Item.limit(6).order('created_at DESC')
  end

  def index
    @items = Item.limit(4).order('created_at DESC')
  end
end
