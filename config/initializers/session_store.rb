# Be sure to restart your server when you modify this file.

case Rails.env
  when 'development' then
    Rails.application.config.session_store :redis_store,
                                           servers: "redis://localhost:6379/0/cache",
                                           key: '_snk_property_session'
  when 'staging' then
    Rails.application.config.session_store :redis_store,
                                           servers: "#{ENV['REDIS_URL']}/0/cache",
                                           key: '_snk_property_session'
  when 'production' then
    Rails.application.config.session_store :redis_store,
                                           servers: "#{ENV['REDIS_URL']}/0/cache",
                                           key: '_snk_property_session'
  when 'test' then
    Rails.application.config.session_store :redis_store,
                                           servers: "redis://localhost:6379/0/cache",
                                           key: '_snk_property_session'
  else
    raise 'いやはや何か問題ですぞ'
end