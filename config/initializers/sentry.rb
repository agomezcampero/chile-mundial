# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = ENV.fetch("SENTRY_DSN", nil)
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 0.25
  # or
  # config.traces_sampler = lambda do |context|
  #   true
  # end
end
