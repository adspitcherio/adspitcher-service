class LocationsController < ApplicationController
  include CRUDActions

  def api_resource
    Location
  end
end
