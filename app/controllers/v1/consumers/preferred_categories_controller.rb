class V1::Consumers::PreferredCategoriesController < ApplicationController
  include V1::Consumers
  include CRUDAssociationActions

  def association_name
    :preferred_categories
  end

  def association_resource
    Category
  end
end
