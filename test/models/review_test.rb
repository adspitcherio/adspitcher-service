# == Schema Information
#
# Table name: reviews
#
#  id           :integer          not null, primary key
#  body         :text             not null
#  posted_by_id :integer          not null
#  created_at   :datetime
#  updated_at   :datetime
#  brand_id     :integer
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
