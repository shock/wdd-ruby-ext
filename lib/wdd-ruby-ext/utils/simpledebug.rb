# require 'pp'

module WDD
  module SimpleDebug
  
    public
    @__debugLevel = -1
    @__prefix = ""
  
    def setDebugLevel level
      @__debugLevel = level
    end
  
    def setDebugPrefix __prefix
      @__prefix = __prefix
    end
  
    def debugPrefix
      @__prefix || ""
    end
  
    def set_debug_level level
      @__debugLevel = level
    end

    def __debugLevel
      return @__debugLevel
    end
  
    def debugLevel
      @__debugLevel
    end

    def debug_msg message, level=0
      @__debugLevel ||= -1
      if( level <= @__debugLevel )
        puts debugPrefix + message
      end
    end

    def show_msg message
        puts debugPrefix + message
    end

    def error_msg message, level=0
        puts debugPrefix + "ERROR: " + message
    end
  
  end
end
