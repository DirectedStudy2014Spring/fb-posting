Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '659501410754552', 'bc0f4393cc0099355ea1f03bef6e228d', {:scope => 'user_events, publish_stream, publish_actions'}
end