class Item < ApplicationRecord

  # active_hashを
  # extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :saler, class_name: 'User', foreign_key: 'saler_id', optional: true
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id', optional: true
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :condition
  belongs_to :delivery_day
  # belongs_to :delivery_way
  # belongs_to :size
  belongs_to :region
  belongs_to :postage
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
end
