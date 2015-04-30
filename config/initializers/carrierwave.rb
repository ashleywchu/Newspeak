Carrierwave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["Access_Key_ID"],
    aws_secret_access_key: ENV["Secret_Access_Key"],
  }
  config.fog_directory = ENV["newspeak-article-images"]
end