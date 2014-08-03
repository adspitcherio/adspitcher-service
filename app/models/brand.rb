# == Schema Information
#
# Table name: brands
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  username        :string(64)       not null
#  password_digest :string(255)      not null
#  email           :string(255)      not null
#  type            :string(255)      not null
#  created_at      :datetime
#  updated_at      :datetime
#  rating          :float
#  location_id     :integer
#  store_id        :integer
#

class Brand < User
  self.table_name = :brands

  has_many :reviews
end
