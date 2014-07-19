class V1::BrandsController < ApplicationController
  include CRUDActions

  def api_resource
    Brand
  end

  def permitted_attributes
    [:name, :username, :email, :password, :rating, :location_id, :store_id]
  end

end
