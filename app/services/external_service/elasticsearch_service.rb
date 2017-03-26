class ExternalService::ElasticsearchService
  def is_running?
    !!Elasticsearch::Model.client.info rescue false
  end
end
