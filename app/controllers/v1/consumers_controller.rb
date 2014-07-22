class V1::ConsumersController < ApplicationController
  include CRUDActions
  before_filter :set_username, only: [:create]

  def api_resource
    Consumer
  end

  def permitted_attributes
    [:name, :username, :email, :password, :credits, :current_location_latitude, :current_location_longitude]
  end

  def set_username
    params[:consumer][:username] ||= params[:consumer][:email] if params[:consumer]
  end

end
