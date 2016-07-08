$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'overlook'
require 'pry'

def fixture_directory
  File.expand_path(File.join(File.dirname(__FILE__), 'fixtures'))
end

