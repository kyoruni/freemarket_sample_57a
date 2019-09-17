class Item < ApplicationRecord
  belongs_to :saler, class_name: 'User', foreign_key: 'saler_id', optional: true
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id', optional: true
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :condition
  belongs_to :delivery_day
  belongs_to :delivery_way
  belongs_to :size
  belongs_to :region
  belongs_to :postage
  has_many :images, dependent: :destroy, index_errors: true
  accepts_nested_attributes_for :images

  # 最新のデータを、指定した件数取得
  scope :recent, -> count { order('created_at DESC').limit(count) }

  # 指定したカテゴリーのデータを取得
  scope :category_items, -> categories { includes(:images).where(category_id: categories.ids ) }
  scope :category_item,  -> category_list { includes(:images).where(category_id: category_list.id )}

  # 指定したブランドのデータを取得
  scope :brand_items, -> brand_id { includes(:images).where(brand_id: brand_id ) }

  # バリデーションを定義
  validates :name, presence: true, length: { maximum: 40 }
  validates :price, presence: true, inclusion: 300..9999999
  validates :text, presence: true, length: { maximum: 1000 }
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :delivery_day_id, presence: true
  validates :delivery_way_id, presence: true
  validates :saler_id, presence: true
  validates :postage_id, presence: true
  validates :region_id, presence: true
  validates :size_id, presence: true
end
