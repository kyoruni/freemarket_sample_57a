class Item < ApplicationRecord

  # active_hashでの紐付け妥協。後で直すかもなのでコメントアウト中。
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

  # 最新のデータを、指定した件数取得
  scope :recent, -> count { order('created_at DESC').limit(count) }

  # 指定したカテゴリーのデータを取得
  scope :category_items, -> categories { includes(:images).where(category_id: categories.ids ) }

  # 指定したブランドのデータを取得
  scope :brand_items, -> brand_id { includes(:images).where(brand_id: brand_id ) }
end
