CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region:                ENV['AWS_REGION'],
      path_style:            true
  }

  config.fog_public        = true
  config.remove_previously_stored_files_after_update = false
  config.fog_directory     = ENV['BUCKET_NAME']
  config.cache_storage     = :fog
  config.asset_host        = ENV['HOST']
end