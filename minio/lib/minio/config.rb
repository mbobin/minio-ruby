# frozen_string_literal: true

module MinioRuby
  class Config
    attr_accessor :endpoint, :port, :transport, :secure
    attr_accessor :access_key, :secret_key, :region, :service

    def initialize(args = {})
      @endpoint   = args[:endpoint] || 'http://localhost:9000'
      @port       = args[:port] || 9000
      @access_key = args[:access_key]
      @secret_key = args[:secret_key]
      @secure     = args[:secure]
      @transport  = args[:transport]
      @region     = args[:region] || 'us-east-1'
      @service    = args[:service] || 's3'
    end
  end
end
