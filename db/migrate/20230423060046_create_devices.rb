class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :status
      t.datetime :last_update
      t.references :restaurant, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
