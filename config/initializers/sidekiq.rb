require 'sidekiq'

redis_opts = { namespace: "sidekiq_#{Rails.application.class.to_s.deconstantize.underscore}_#{Rails.env}" }

redis_opts.merge!(url: 'redis://localhost/12') if Rails.env.test?
redis_opts.merge!(url: ENV['REDIS_URL']) if Rails.env.staging?

Sidekiq.configure_server do |config|
  config.redis = redis_opts
end

Sidekiq.configure_client do |config|
  config.redis = redis_opts
end
