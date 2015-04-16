HighVoltage.configure do |config|
	# Sets a static page as the root view
  config.home_page = 'home'
  # Removes 'pages' from URLs called in High Voltage
  config.route_drawer = HighVoltage::RouteDrawers::Root
end