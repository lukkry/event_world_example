require 'konf'

config_path = File.expand_path('../config.yml', __FILE__)
config_path = File.expand_path('../config.sample.yml', __FILE__) unless File.exists?(config_path)
AppConfig = Konf.new(config_path, Rails.env.to_s)
