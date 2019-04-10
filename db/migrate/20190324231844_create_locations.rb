class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :primary_address
      t.string :secondary_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :main_phone
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
