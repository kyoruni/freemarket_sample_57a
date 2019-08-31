class Item < ApplicationRecord
  belongs_to :saler, class_name: 'User', foreign_key: 'saler_id'
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :condition
  belongs_to :delivery_day
  belongs_to :delivery_way
  belongs_to :size
end
