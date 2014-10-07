module DpdApi
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :client_key,
                  :client_number,
                  :base_url

    attr_reader :auth_params

    def initialize
      @client_key    = '123'
      @client_number = '234'
      @base_url      = 'http://wstest.dpd.ru'
    end

    def auth_params
      {
        auth: {
          client_number: client_number,
          client_key:    client_key,
        }
      }
    end
  end
end