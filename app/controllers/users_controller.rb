class UsersController < ApplicationController
  def show
    @categories = Category.order("id ASC")
  end
end
