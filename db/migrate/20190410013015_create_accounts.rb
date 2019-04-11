class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :type
      t.string :address
      t.string :username
      t.string :password
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end