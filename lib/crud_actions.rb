module CRUDActions
  def index
    render json: api_resource.all
  end

  def show
    render json: api_resource.find(params[:id])
  end

  def create
    resource = api_resource.create(params.require(api_resource_name).permit(permitted_attributes))
    if resource.errors.blank?
      render json: resource
    else
      render json: resource.errors, status: :unprocessable_entity
    end
  end

  def update
    resource = api_resource.update(params[:id], params.require(api_resource_name).permit(permitted_attributes))

    if resource.errors.blank?
    render json: resource
    else
      render json: resource.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render json: api_resource.destroy(params[:id])
  end

  def api_resource_name
    api_resource.name.underscore
  end

  def api_resource
    raise NotImplementedError
  end
end
