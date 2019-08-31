class AddCategoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :category, foreign_key: true
    add_reference :items, :brand, foreign_key: true
    add_reference :items, :condition, foreign_key: true
    add_reference :items, :delivery_day, foreign_key: true
    add_reference :items, :delivery_way, foreign_key: true
    add_reference :items, :size, foreign_key: true
    add_reference :items, :saler, foreign_key: { to_table: :users }
    add_reference :items, :buyer, foreign_key: { to_table: :users }
  end
end
