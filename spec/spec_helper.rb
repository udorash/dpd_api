require 'dpd_api'
require "savon/mock/spec_helper"

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end