$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require 'logger'
require 'geminabox'

class Geminabox
  logger = Logger.new('/var/log/rails_services/geminabox.log')
  use Rack::CommonLogger, logger
  use Rack::Logger, logger
end

run Geminabox
