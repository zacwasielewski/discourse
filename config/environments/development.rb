Discourse::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Concatenate all assets, even in development mode. This appears to be considerably
  # faster for reloading in development mode.
  config.assets.debug = ENV['DEBUG_ASSETS'] == "1"

  config.watchable_dirs['lib'] = [:rb]

  config.sass.debug_info = false
  config.handlebars.precompile = false

  # we recommend you use mailcatcher https://github.com/sj26/mailcatcher
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => "smtp.mandrillapp.com",
    :port                 => 25,
    :domain               => 'boulderproblems.com',
    :user_name            => 'zac@wasielewski.org',
    :password             => 's8BPd78_JEAYM1Uu-EuTbQ',
    :authentication       => 'login',
    :enable_starttls_auto => true  }
  config.action_mailer.raise_delivery_errors = true

  BetterErrors::Middleware.allow_ip! ENV['TRUSTED_IP'] if ENV['TRUSTED_IP']

  config.enable_mini_profiler = true

  config.boulderproblems_auth_host = 'http://localhost:8080'
  config.boulderproblems_api_key = '286b4297a4efc3c0d90d14ad91688c63251217f8e7c05ce6582f396c86504b79'
  config.boulderproblems_shared_secret = '6118695e124da956461cbcd0108519065713f016f337b08394b0adadf2b94c20'
end

