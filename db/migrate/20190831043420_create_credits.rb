class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.string      :number,                  null: false
      t.integer     :expiration_date_month,   null: false
      t.integer     :expiration_date_year,    null: false
      t.integer     :security_code,           null: false
      t.references  :user,                    foreigh_key: true
      t.timestamps
    end
  end
end
