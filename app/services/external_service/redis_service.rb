class ExternalService::RedisService
  def is_running?
    !!Sidekiq.redis { |r| r.redis.info } rescue false
  end
end
