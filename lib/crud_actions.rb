module CRUDActions
  def index
    respond_with api_resource.all
  end

  def show
    respond_with api_resource.find(params[:id])
  end

  def create
    respond_with api_resource.create(params[api_resource_name])
  end

  def update
    respond_with api_resource.update(params[:id], params[api_resource_name.pluralize])
  end

  def destroy
    respond_with api_resource.destroy(params[:id])
  end

  def api_resource_name
    api_resource.name.underscore
  end

  def api_resource
    raise NotImplementedError
  end
end
