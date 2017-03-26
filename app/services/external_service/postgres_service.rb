class ExternalService::PostgresService
  def is_running?
    !!ActiveRecord::Base.connection.execute('SELECT version();') rescue false
  end
end
