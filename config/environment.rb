# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true

  # :address => 'smtp.postmarkapp.com',
  # :port => '587',
  # :authentication => :plain,
  # :user_name => '3ebbcdd6-e6ee-48e5-b880-56ad61e6ef04',
  # :password => '3ebbcdd6-e6ee-48e5-b880-56ad61e6ef04'

}
