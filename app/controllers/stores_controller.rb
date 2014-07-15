class StoresController < ApplicationController
  include CRUDActions

  def api_resource
    Store
  end

  def permitted_attributes
    [:name]
  end
end
