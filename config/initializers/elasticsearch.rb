Elasticsearch::Model.client = Elasticsearch::Client.new(
  host: Rails.application.config.elasticsearch['url'] || 'http://localhost:9200')
