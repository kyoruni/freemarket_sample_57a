class SignupController < ApplicationController

  def step1
    @user = User.new()
    @user.build_address
  end

  def step2
  end

  def step3
  end

  def step4
  end

  def step5
  end
end
