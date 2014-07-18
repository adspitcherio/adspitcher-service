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

require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
