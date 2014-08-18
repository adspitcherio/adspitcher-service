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

class Offer < ActiveRecord::Base
  belongs_to :location
  belongs_to :posted_by, class_name: Brand.name

  validates :posted_by_id, presence: true
end
