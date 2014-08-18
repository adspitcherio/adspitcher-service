class V1::OffersController < ApplicationController
  include CRUDActions

  def api_resource
    Offer
  end

  def permitted_attributes
    [:description, :starts_on, :ends_on, :posted_by_id,
     :location_id, :up_vote_count, :down_vote_count]
  end

end
