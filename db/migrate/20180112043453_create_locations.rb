class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.integer :zipcode
      t.string :state
      t.timestamps
    end
  end
end
