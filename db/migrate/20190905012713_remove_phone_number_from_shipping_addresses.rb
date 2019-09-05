class RemovePhoneNumberFromShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :shipping_addresses, :phone_number, :string
  end
end
