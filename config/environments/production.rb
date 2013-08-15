Railwaystations::Application.configure do

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # This needs to be set for Little Printer
  config.action_controller.asset_host = "http://railwaystations.frankieroberto.com"
end
