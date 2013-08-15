require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "action_controller/railtie"
require "active_resource/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Railwaystations
  class Application < Rails::Application

    config.whiny_nils = true
    config.encoding = "utf-8"
#    config.logger = Logger.new(STDOUT)

    config.session_store :disabled

    config.i18n.default_locale = :"en-gb"    

    config.active_support.escape_html_entities_in_json = true
    config.active_support.deprecation = :log

    config.assets.enabled = true
    config.assets.version = '1.1'

    config.action_dispatch.best_standards_support = :builtin

    
  end
end
