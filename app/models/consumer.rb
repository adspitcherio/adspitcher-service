# == Schema Information
#
# Table name: consumers
#
#  id                         :integer          not null, primary key
#  name                       :string(255)
#  username                   :string(64)       not null
#  password_digest            :string(255)      not null
#  email                      :string(255)      not null
#  type                       :string(255)      not null
#  created_at                 :datetime
#  updated_at                 :datetime
#  credits                    :float
#  current_location_latitude  :integer
#  current_location_longitude :integer
#

class Consumer < User
  self.table_name = :consumers
  has_many :reviews, foreign_key: :posted_by_id

  has_and_belongs_to_many :preferred_locations,
                          join_table: :consumer_preferred_locations,
                          class_name: Location.name

  has_and_belongs_to_many :preferred_brands,
                          join_table: :consumer_preferred_brands,
                          class_name: Brand.name

  has_and_belongs_to_many :preferred_categories,
                          join_table: :consumer_preferred_categories,
                          class_name: Category.name
end
