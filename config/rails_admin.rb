RailsAdmin.config do |config|
#  config.authorize_with :cancan
  config.authorize_with :cancan, AdminAbility
end