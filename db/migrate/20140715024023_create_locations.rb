class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :latitude, precision: 10, scope: 6
      t.decimal :longitude, precision: 10, scope: 6
      t.string :type
      t.integer :parent_id

      t.timestamps
    end
  end
end
