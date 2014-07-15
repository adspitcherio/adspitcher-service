# == Schema Information
#
# Table name: brands
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  username        :string(255)      not null
#  password_digest :string(255)
#  location_id     :integer
#  store_id        :integer
#  rating          :float
#  created_at      :datetime
#  updated_at      :datetime
#

class Brand < ActiveRecord::Base
  has_secure_password
end
