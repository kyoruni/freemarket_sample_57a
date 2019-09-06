class AddUserToShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :shipping_addresses, :user, foreign_key: true
  end
end
