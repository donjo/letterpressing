Wordnik.configure do |config|
  config.api_key = '50385fa6135b7e133f4060868970e5ec80c241731d46ef3c8'               # required
  config.username = 'johndonmoyer'                    # optional, but needed for user-related functions
  config.password = 'littled33rm1c3'               # optional, but needed for user-related functions
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new('/dev/null')     # defaults to Rails.logger or Logger.new(STDOUT). Set to Logger.new('/dev/null') to disable logging.
end
