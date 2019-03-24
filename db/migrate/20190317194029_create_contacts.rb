class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :primary_phone
      t.string :secondary_phone
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
