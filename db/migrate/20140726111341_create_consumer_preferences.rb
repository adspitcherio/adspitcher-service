class CreateConsumerPreferences < ActiveRecord::Migration
  def change
    create_table :consumer_preferred_locations do |t|
      t.integer :consumer_id, references: :consumers
      t.integer :location_id, references: :locations
    end

    create_table :consumer_preferred_brands do |t|
      t.integer :consumer_id, references: :consumers
      t.integer :brand_id, references: :brands
    end

    create_table :consumer_preferred_categories do |t|
      t.integer :consumer_id, references: :consumers
      t.integer :category_id, references: :categories
    end
  end
end
