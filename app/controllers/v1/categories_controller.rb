class V1::CategoriesController < ApplicationController
  include CRUDActions

  def api_resource
    Category
  end

  def permitted_attributes
    [:name]
  end

end
