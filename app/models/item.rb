class Item < ApplicationRecord

  # active_hashを
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :saler, class_name: 'User', foreign_key: 'saler_id'
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :condition
  belongs_to :delivery_day
  belongs_to :delivery_way
  belongs_to :size
  belongs_to_active_hash :region
  has_many :images, dependent: :destroy

  # 最新のデータを、指定した件数取得
  scope :recent, -> count { order('created_at DESC').limit(count) }

  # 指定したカテゴリーのデータを取得
  scope :category_items, -> categories { includes(:images).where(category_id: categories.ids ) }

  # 指定したブランドのデータを取得
  scope :brand_items, -> brand_id { includes(:images).where(brand_id: brand_id ) }
end
