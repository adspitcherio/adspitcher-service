class V1::ReviewsController < ApplicationController
  include CRUDActions

  def api_resource
    Review
  end

  def permitted_attributes
    [:body, :posted_by_id, :brand_id]
  end

end
