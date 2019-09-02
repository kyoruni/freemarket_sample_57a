class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @items = Item.limit(6).order('created_at DESC')
    @categories = Category.order("id ASC")
  end

  def index
    @items = Item.limit(4).order('created_at DESC')
    @categories = Category.order("id ASC")
  end
end
