$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require 'logger'
require 'geminabox'

logger = Logger.new('/var/log/rails_services/geminabox.log')

class Geminabox
  use Rack::CommonLogger, logger
  use Rack::Logger, logger
end

run Geminabox
