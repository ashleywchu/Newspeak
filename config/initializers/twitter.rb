client = Twitter::REST::Client.new do |config|
    config.consumer_key = ENV["twitter_api_key"]
    config.consumer_secret = ENV["twitter_secret_key"]
    config.access_token = ENV["config_access_token"]
    config.access_token_secret = ENV["config_access_token_secret"]
end

client.update("Breaking News; Newspeak: Get The Facts...")