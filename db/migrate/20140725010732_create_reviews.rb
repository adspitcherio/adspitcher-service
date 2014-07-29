class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :posted_by_id, references: :consumers, null: false

      t.timestamps
    end
  end
end
