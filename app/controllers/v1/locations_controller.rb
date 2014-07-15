class V1::LocationsController < ApplicationController
  include CRUDActions

  def api_resource
    Location
  end

  def permitted_attributes
    [:name, :parent_id, :latitude, :longitude, :type]
  end

end
