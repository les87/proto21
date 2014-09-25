  Portal::Application.configure do

    config.cache_classes = true
    config.consider_all_requests_local       = false #Turn to true to get error log
    config.action_controller.perform_caching = true
    config.serve_static_assets = false
    config.assets.compress = true
    config.assets.compile = true
    config.assets.digest = true
    config.i18n.fallbacks = true
    config.active_support.deprecation = :notify

    #Defined SMTP options
    #SMTP
    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        :address              => 'smtp.gmail.com',
        :port                 => 587,
        :domain               => 'gmail.com',
        :user_name            => 'leslie.kifuse',
        :password             => 'magicsex',
        :authentication       => 'plain',
        :enable_starttls_auto => 'true'
    }
  end
