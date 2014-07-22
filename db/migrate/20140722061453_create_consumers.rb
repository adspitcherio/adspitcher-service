class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers, inherits: :users do |t|
      t.float :credits
      t.decimal :current_location_latitude, precision: 10, scope: 6
      t.decimal :current_location_longitude, precision: 10, scope: 6
      t.unique_constraint :email
      t.unique_constraint :username

      t.timestamps
    end
  end
end
