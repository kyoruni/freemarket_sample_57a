class AddBirthYearToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_year, :string, null: false
    add_column :users, :birth_month, :string, null: false
    add_column :users, :birth_day, :string, null: false
    add_column :users, :phone_number, :integer, null: false
  end
end
