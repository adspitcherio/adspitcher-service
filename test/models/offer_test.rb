# == Schema Information
#
# Table name: offers
#
#  id              :integer          not null, primary key
#  description     :text
#  starts_on       :date
#  ends_on         :date
#  location_id     :integer
#  up_vote_count   :integer          default(0)
#  down_vote_count :integer          default(0)
#  posted_by_id    :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
