class ExternalService
  def initialize(service_name)
    @service_name = service_name
  end

  def is_running?
    service.is_running?
  end

  private

  def service
    "ExternalService::#{@service_name.titlecase}Service".constantize.new
  end
end
