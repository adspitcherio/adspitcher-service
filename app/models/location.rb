# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :integer
#  longitude  :integer
#  type       :string(255)
#  parent_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
end
