# This is a time based throttler, with class scope.
# When set, the waitTimeGate function will block or return true until the period set has elapsed
module WDD
  module Utilities
    class TimeGate
      def set seconds
        @gate_time = Time.now + seconds
      end
  
      def wait block = true
        if block     
          while Time.now < @gate_time do
            sleep 0.2
          end
        else
          Time.now < @gate_time
        end
      end
  
      def wait_while_true guard = true
        while Time.now < @gate_time && guard do
          sleep 0.2
        end
      end
  
      def initialize
        @gate_time = Time.now
      end
    end
  
    def self.elapsed_time &block
      start_time = Time.now
      yield
      Time.now - start_time
    end
  end
end
