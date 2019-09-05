class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @items = Item.limit(6).order('created_at DESC')
  end

  def index
    ladies_categories    = Category.where('ancestry LIKE(?)', "1/%")
    mens_categories      = Category.where('ancestry LIKE(?)', "2/%")
    kids_categories      = Category.where('ancestry LIKE(?)', "3/%")
    cosmetics_categories = Category.where('ancestry LIKE(?)', "7/%")
    chanel_id            = Brand.find_by(name: "シャネル")
    louisVuitton_id      = Brand.find_by(name: "ルイ ヴィトン")
    supreme_id           = Brand.find_by(name: "シュプリーム")
    nike_id              = Brand.find_by(name: "ナイキ")

    @ladies_items       = Item.includes(:images).where(category_id: ladies_categories.ids).order('created_at DESC').limit(4)
    @mens_items         = Item.includes(:images).where(category_id: mens_categories.ids).order('created_at DESC').limit(4)
    @kids_items         = Item.includes(:images).where(category_id: kids_categories.ids).order('created_at DESC').limit(4)
    @cosmetics_items    = Item.includes(:images).where(category_id: cosmetics_categories.ids).order('created_at DESC').limit(4)
    @chanel_items       = Item.includes(:images).where(brand_id: chanel_id).order('created_at DESC').limit(4)
    @louisVuitton_items = Item.includes(:images).where(brand_id: louisVuitton_id).order('created_at DESC').limit(4)
    @supreme_items      = Item.includes(:images).where(brand_id: supreme_id).order('created_at DESC').limit(4)
    @nike_items         = Item.includes(:images).where(brand_id: nike_id).order('created_at DESC').limit(4)
  end
end
