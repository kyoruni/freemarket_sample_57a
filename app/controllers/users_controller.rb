class UsersController < ApplicationController
  def show
    @nickname = current_user.name
  end

  def destroy
  end

  def identification
  end
end
