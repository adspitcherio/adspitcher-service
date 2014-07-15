class V1::LocationsController < ApplicationController
  include CRUDActions

  def api_resource
    Location
  end
end
