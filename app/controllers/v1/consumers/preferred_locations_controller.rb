class V1::Consumers::PreferredLocationsController < ApplicationController
  include V1::Consumers
  include CRUDAssociationActions

  def association_name
    :preferred_locations
  end

  def association_resource
    Location
  end
end
