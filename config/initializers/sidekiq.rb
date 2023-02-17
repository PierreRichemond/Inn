Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch('REDIS_ENDPOINT_URI', 'redis://localhost:6379/1') }
end
Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch('REDIS_ENDPOINT_URI', 'redis://localhost:6379/1') }
end
