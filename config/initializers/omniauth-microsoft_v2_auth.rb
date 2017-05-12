require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE if Rails.env.development?

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :microsoft_v2_auth,
  ENV['CLIENT_ID'],
  ENV['CLIENT_SECRET'],
  :scope => ENV['SCOPE']
end