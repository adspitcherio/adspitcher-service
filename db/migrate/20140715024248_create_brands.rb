class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :email, null: true
      t.string :username, null: false
      t.string :password_digest
      t.integer :location_id
      t.integer :store_id
      t.float :rating

      t.timestamps
    end

    add_index :brands, :email, unique: true
    add_index :brands, :username, unique: true
  end
end
