require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module SnkProperty
  class Application < Rails::Application

    # config.time_zone = 'Central Time (US & Canada)'

    config.i18n.available_locales = %i(ja en th)
    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :en

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components', 'gentelella', 'production')
    # config.active_record.raise_in_transactional_callbacks = true
    config.quiet_assets = true

    case Rails.env
      when 'development' then
        config.cache_store = :redis_store, "redis://localhost:6379/0/cache", { expires_in: 90.minutes}
      when 'staging' then
        config.cache_store = :redis_store, "#{ENV['REDIS_URL']}/0/cache",    { expires_in: 90.minutes}
      when 'production' then
        config.cache_store = :redis_store, "#{ENV['REDIS_URL']}/0/cache",    { expires_in: 90.minutes}
      when 'test' then
        config.cache_store = :redis_store, "redis://localhost:6379/0/cache", { expires_in: 90.minutes}
      else
        raise 'いやはや何か問題ですぞ'
    end
  end
end
