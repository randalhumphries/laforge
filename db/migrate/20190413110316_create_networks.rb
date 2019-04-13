class CreateNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :networks do |t|
      t.string :network_type
      t.string :ip_subnet
      t.string :description
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
