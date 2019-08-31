class ItemsController < ApplicationController

  def show
    @items = Item.limit(6).order('created_at DESC')
  end

  def index
    @items = Item.limit(4).order('created_at DESC')
  end
end
