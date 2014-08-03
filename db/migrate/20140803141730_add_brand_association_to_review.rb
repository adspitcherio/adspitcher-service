class AddBrandAssociationToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :brand_id, :integer, references: :brands
  end
end
