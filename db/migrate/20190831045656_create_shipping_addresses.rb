class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.string     :last_name,         null: false
      t.string     :first_name,        null: false
      t.string     :last_name_kana,    null: false
      t.string     :first_name_kana,   null: false
      t.string     :postal_code
      t.string     :address
      t.string     :duilding
      t.string     :phone_number,      null: false
      t.timestamps
    end
  end
end
