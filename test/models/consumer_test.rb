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

require 'test_helper'

class ConsumerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
