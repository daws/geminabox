$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "lib")))
require "geminabox"

require 'logger'
logger = Logger.new('/var/log/rails_services/geminabox.log')
use Rack::CommonLogger, logger

run Geminabox
