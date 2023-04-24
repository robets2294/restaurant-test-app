class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :status
      t.datetime :last_update

      t.timestamps
    end
  end
end
