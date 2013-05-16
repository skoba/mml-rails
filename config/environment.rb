# Load the rails application.
require File.expand_path('../application', __FILE__)

# Initialize the rails application.
MmlCare::Application.initialize!

# Mime type extension for MML
Mime::Type.register "text/xml", :mml
