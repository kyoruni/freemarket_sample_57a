class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @items = Item.limit(6).order('created_at DESC')
  end

  def index
    @items = Item.limit(4).order('created_at DESC')
  end

  def new
    @item = Item.new
    4.times{@item.images.build}

    # collction_selectで選択肢を呼び出す記述
    @root_category = Category.order("id ASC").limit(13)
    @condition = Condition.order("id ASC")
    @postage = Postage.order("id ASC")
    @region = Region.order("id ASC")
    @delivery_day = DeliveryDay.order("id ASC")
  end

  def create
    @item = Item.new(item_params)
    
    @item.save!
    redirect_to root_path
    # if @item.save
    #   redirect_to root_path
    # else
    #   redirect_to new_item_path
    # end
  end

  private

  def item_params
    # binding.pry
    params.require(:item).permit(:name, :text, :category_id, :condition_id, :region_id, :postage_id, :delivery_day_id, :price, images_attributes: [:id, :image] )
  end
end


# :category_id, :condition_id, :postage_id, :region_id, :delivery_day_id, 