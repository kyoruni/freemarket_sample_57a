class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shipping_address
  accepts_nested_attributes_for :shipping_address
  has_one :credit
  accepts_nested_attributes_for :credit

end
