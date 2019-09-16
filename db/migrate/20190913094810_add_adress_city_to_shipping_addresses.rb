class AddAdressCityToShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :shipping_addresses, :duilding
    remove_column :shipping_addresses, :last_name
    remove_column :shipping_addresses, :first_name
    remove_column :shipping_addresses, :last_name_kana
    remove_column :shipping_addresses, :first_name_kana
    add_reference :shipping_addresses, :region, foreign_key:true
    add_column    :shipping_addresses, :city, :string, null: false
    add_column    :shipping_addresses, :building, :string
    add_column    :shipping_addresses, :building_phone, :string
    change_column_null :shipping_addresses, :address, false
  end
end
