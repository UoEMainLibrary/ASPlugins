# frozen_string_literal: true

require 'recaptcha'

Recaptcha.configure do |config|
  config.site_key = AppConfig[:recaptcha_site_key]
  config.secret_key = AppConfig[:recaptcha_secret_key]
end
