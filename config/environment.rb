# The following values must match the client ID, secret, and reply URL
# in your Microsoft App Registration Portal entry for your app.
ENV['CLIENT_ID'] = '7a19caa2-917f-4e06-af5e-0d1590272f3b'
ENV['CLIENT_SECRET'] = '1Hu8SvwnhVJfuWaXXGW6UFE'
ENV['SCOPE'] = 'openid email profile https://graph.microsoft.com/User.Read https://graph.microsoft.com/Mail.Send'

# Load the Rails application.
require File.expand_path('../application', __FILE__)

Rails.logger = Logger.new(STDOUT)
# Initialize the Rails application.
Rails.application.initialize!
