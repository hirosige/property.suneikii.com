Rails.application.configure do

  config.cache_classes = true
  config.eager_load = false
  config.serve_static_files   = true
  config.static_cache_control = 'public, max-age=3600'
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_dispatch.show_exceptions = false
  config.action_controller.allow_forgery_protection = false
  config.action_mailer.delivery_method = :test
  config.active_support.test_order = :random
  config.active_support.deprecation = :stderr
  # config.action_view.raise_on_missing_translations = true
  config.active_record.raise_in_transactional_callbacks = true

  config.log_level = :debug

  config.action_mailer.default_url_options = { host: '192.168.33.13', port: 3000 }
end
