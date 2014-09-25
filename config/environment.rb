# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Proto::Application.initialize!


ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :authentication => :"plain",
    :user_name => "leslie.kifuse",   # don't put "@gmail.com" here, replace this with your email's username
    :password => "magicsex", # replace with your gmail's password
    :enable_starttls_auto => true }