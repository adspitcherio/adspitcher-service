# == Schema Information
#
# Table name: reviews
#
#  id           :integer          not null, primary key
#  body         :text             not null
#  posted_by_id :integer          not null
#  created_at   :datetime
#  updated_at   :datetime
#

class Review < ActiveRecord::Base
  belongs_to :posted_by, class_name: Consumer.name
end
