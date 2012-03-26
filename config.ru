$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require 'logger'
require "geminabox"

class Geminabox

  def setup_custom_logger(builder)
    logger = Logger.new('/var/log/rails_services/geminabox.log')
    builder.use Rack::CommonLogger, logger
  end

end

run Geminabox
