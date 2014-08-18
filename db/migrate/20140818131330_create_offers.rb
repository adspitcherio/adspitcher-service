class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :description
      t.date :starts_on
      t.date :ends_on
      t.integer :location_id, references: :locations
      t.integer :up_vote_count, default: 0
      t.integer :down_vote_count, default: 0
      t.integer :posted_by_id, references: :brands, null: false

      t.timestamps
    end
  end
end
