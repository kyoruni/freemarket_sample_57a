class SearchController < ApplicationController
  before_action :set_category_list, only: [:index]
  def index
    @items = Item.all
  end
end
