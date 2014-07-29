class V1::Consumers::PreferredBrandsController < ApplicationController
  include V1::Consumers
  include CRUDAssociationActions

  def association_name
    :preferred_brands
  end

  def association_resource
    Brand
  end
end
