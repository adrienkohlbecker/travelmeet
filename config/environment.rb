# Load the Rails application.
require File.expand_path('../application', __FILE__)

# mandrill heroku addon
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      ENV['MANDRILL_USERNAME'],
    :password =>       ENV['MANDRILL_APIKEY'],
    :domain =>         'heroku.com',
    :authentication => :plain
}
ActionMailer::Base.delivery_method = :smtp

# Initialize the Rails application.
TravelMeet::Application.initialize!
