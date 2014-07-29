module CRUDAssociationActions
  def index
    render json: resource_scope.send(association_name).all
  end

  def show
    render json: resource_scope.send(association_name).find(params[:id])
  end

  def create
    resource_scope.send(
                        "#{association_name}=",
                        association_resource.where(
                          params.require(api_resource_name).require(association_name).permit(:id, :id => [])
                                                  )
                        )
    errors = []
    if errors.blank?
      render json: resource_scope.send(association_name)
    else
      render json: errors, status: :unprocessable_entity
    end
  end

  def api_resource_name
    api_resource.name.underscore
  end

  def association_resource_name
    api_resource.name.underscore
  end

  def resource_scope
    raise NotImplementedError
  end

  def association_name
    NotImplementedError
  end

  def association_resource
    NotImplementedError
  end

  def resource_scope
    api_resource.find(params["#{api_resource_name}_id"])
  end
end
