require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Railwaystations
  class Application < Rails::Application

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"
    
    # We don't need sessions for this
    config.session_store :disabled

    # Enable the asset pipeline
    config.assets.enabled = true
    # This makes assets work with Heroku
    config.assets.initialize_on_precompile = false
    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.1'
    
    # Set the default locale to be British English
    config.i18n.default_locale = :"en-gb"    

    
    # Use STDOUT as a Logger (required by Unicorn on Heroku)
    config.logger = Logger.new(STDOUT)
    
  end
end
