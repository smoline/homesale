Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET']

  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
  scope: 'public_profile', info_fields: 'id,name,email,link'

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']

  provider :linkedin, ENV['LINKEDIN_CLIENT_ID'], ENV['LINKEDIN_CLIENT_SECRET'], scope: 'r_basicprofile', fields: ['id', 'first-name', 'last-name', 'location', 'email-address', 'public-profile-url']
  
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_SECRET"], scope: 'profile'
end
