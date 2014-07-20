# Create two applications and print their credentials
['AdsPitcher Website', 'AdsPitcher Mobile App'].map do | app |
  app = Doorkeeper::Application.create name: app, redirect_uri: 'http://adspitcher.com/oauth/callback'

  p "####################"
  p "Name: #{app.name}"
  p "UID: #{app.uid}"
  p "Secret: #{app.secret}"
  p "####################"
end
