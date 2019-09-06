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

    @ladies_items       = Item.category_items(ladies_categories).recent(4)
    @mens_items         = Item.category_items(mens_categories).recent(4)
    @kids_items         = Item.category_items(kids_categories).recent(4)
    @cosmetics_items    = Item.category_items(cosmetics_categories).recent(4)
    @chanel_items       = Item.brand_items(chanel_id).recent(4)
    @louisVuitton_items = Item.brand_items(louisVuitton_id).recent(4)
    @supreme_items      = Item.brand_items(supreme_id).recent(4)
    @nike_items         = Item.brand_items(nike_id).recent(4)
  end

  def new
    @item = Item.new
    10.times{@item.images.build}

    # collction_selectで選択肢を呼び出す記述
    @root_category = Category.limit(13)
    @condition = Condition.all
    @postage = Postage.all
    @region = Region.all
    @delivery_day = DeliveryDay.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :text, :category_id, :condition_id, :region_id, :postage_id, :delivery_day_id, :price, images_attributes: [:id, :image] )
  end
end