Devise.setup do |config|
  config.secret_key = 'db5551bca3ec24d5e6d7050ec736676788cab392c73a8686b8decee08d26f67b1b094220c605c6679bb537f26fa46e75611b2ce083ea1c26003d2c62f5981892'

  # ==> Mailer Configuration
  config.mailer_sender = 'hirosige1@gmail.com'
  # config.mailer = 'Devise::Mailer'

  # ==> ORM configuration
  require 'devise/orm/active_record'

  # ==> Configuration for any authentication mechanism
  # config.authentication_keys = [:email]
  # config.request_keys = []
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  # config.params_authenticatable = true
  # config.http_authenticatable = false
  # config.http_authenticatable_on_xhr = true
  # config.http_authentication_realm = 'Application'
  # config.paranoid = true
  config.skip_session_storage = [:http_auth]
  # config.clean_up_csrf_token_on_authentication = true

  # ==> Configuration for :database_authenticatable
  config.stretches = Rails.env.test? ? 1 : 10
  # config.pepper = '38633d0eabbc867927821c16a6695a6bbfc209a1b5e8dbf1fd0ac845211e987e6b8c1fbe78006f35f1286c7880d4d6622a4e11da232d58b84750b892d836edcc'
  # config.send_password_change_notification = false

  # ==> Configuration for :confirmable
  # config.allow_unconfirmed_access_for = 2.days
  # config.confirm_within = 3.days
  config.reconfirmable = true
  # config.confirmation_keys = [:email]

  # ==> Configuration for :rememberable
  # config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true
  # config.extend_remember_period = false
  # config.rememberable_options = {}

  # ==> Configuration for :validatable
  config.password_length = 8..72
  # config.email_regexp = /\A[^@]+@[^@]+\z/

  # ==> Configuration for :timeoutable
  # config.timeout_in = 30.minutes

  # ==> Configuration for :lockable
  # config.lock_strategy = :failed_attempts
  # config.unlock_keys = [:email]
  # config.unlock_strategy = :both
  # config.maximum_attempts = 20
  # config.unlock_in = 1.hour
  # config.last_attempt_warning = true

  # ==> Configuration for :recoverable
  # config.reset_password_keys = [:email]
  config.reset_password_within = 6.hours
  # config.sign_in_after_reset_password = true

  # ==> Configuration for :encryptable
  # config.encryptor = :sha512

  # ==> Scopes configuration
  config.scoped_views = true
  # config.default_scope = :user
  # config.sign_out_all_scopes = true

  # ==> Navigation configuration
  # config.navigational_formats = ['*/*', :html]
  config.sign_out_via = :delete

  # ==> OmniAuth
  #               :provider    APP_ID                                              APP_SECRET
  config.omniauth :twitter,    'laGMXiz5NBv2BIDEz0prbzmbK',                        'CiCnZ6iixgYZ5t4sLYgN2sALupvsp4v41aYZaIpq47Qvt8YMMp'
  config.omniauth :facebook,   Settings.provider.facebook[:api_key],                                  '5b45515ad7c1bf88ecf6ebf18580ae80'
  config.omniauth :flickr,     '4d8897eb2430d59c0490194e941eed12',                 'fcb40aed3b880ad4'
  config.omniauth :foursquare, 'OO4HGMNX3KPMUGUKWVIMQASOCCMQU1C4PKHBQXCT52JBQDGU', 'IEFC5TWZT2VNMTMZHDUTPJ3OIQHQX23CPXIVXS3V4Y0OADPJ'
  config.omniauth :github,
    Settings.provider.github[:api_key],
    Settings.provider.github[:secret_key],
    scope: Settings.provider.github[:scope]

  config.omniauth :instagram,
    Settings.provider.instagram[:api_key],
    Settings.provider.instagram[:secret_key]

  # ==> Warden configuration
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end

  # ==> Mountable engine configurations
  # config.omniauth_path_prefix = '/my_engine/users/auth'

end
