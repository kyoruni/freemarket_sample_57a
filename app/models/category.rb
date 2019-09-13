class Category < ApplicationRecord
  has_ancestry
  has_many :items

  # ランダムで、指定した件数を取得
  scope :rand_recent, -> count { order("RAND()").limit(count) }
end
