class ShippingAddress < ApplicationRecord
  belongs_to :user
  belongs_to :region, optional: true
end
