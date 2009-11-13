require 'net/http'
require 'uri'

# Make the HTTP socket timeout 10 seconds
class BufferedIO   #:nodoc: internal use only
  def initialize(io)
    @io = io
    @read_timeout = 10 # overrides the default in the Ruby lib, which is 60 seconds.
    @debug_output = nil
    @rbuf = ''
  end
end


module Net
  class HTTP
    
    # Convenience method to do HTTP GET with custom headers
    def HTTP.get_with_headers(host, port, path, headers)
      start(host, port) do |http|
        return http.get(path, headers)
      end
    end
  end
end


