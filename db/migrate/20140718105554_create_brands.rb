class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands, inherits: :users do |t|
      t.float :rating, precision: 10, scale: 2
      t.integer :location_id, references: :locations
      t.integer :store_id, references: :stores
      t.unique_constraint :email
      t.unique_constraint :username

      t.timestamps
    end
  end
end
