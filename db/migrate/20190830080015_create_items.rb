class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string      :name, null:false
      t.text        :text, null:false
      t.string      :postage
      t.integer     :price
      t.integer     :state
      t.timestamps
    end
  end
end
