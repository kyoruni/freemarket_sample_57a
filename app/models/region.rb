class Region < ApplicationRecord
  has_many :items
  has_many :region
end