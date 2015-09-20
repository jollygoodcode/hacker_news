# https://github.com/amatsuda/database_rewinder#basic-configuration
RSpec.configure do |config|
  config.before :suite do
    DatabaseRewinder.clean_all
  end

  config.after :each do
    DatabaseRewinder.clean
  end
end
