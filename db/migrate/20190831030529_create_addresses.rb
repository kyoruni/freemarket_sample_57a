class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :last_name,              null: false
      t.string :first_name,             null: false
      t.string :last_name_kana,         null: false
      t.string :first_name_kana,        null: false
      t.string :postal_code,            null: false
      t.references :region_id,           foreign_kye: true
      t.string :addless,                null: false
      t.string :building,               
      t.references :user_id,             foreigh_kye: true
      t.timestamps
    end
  end
end
