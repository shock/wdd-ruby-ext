# TimeGate is a time-based latch.
# When intialized and set with a time period, +wait+ can be called to block the current thread's execution
# until the time period has elapsed.
#
# The idea is that once set, the thread can go about doing other work, then at some point
# wait on the gate to ensure that a certain amount of time has passed before continuing.
# This is specifically useful for throttling API calls.
module WDD
  module Utils
    class TimeGate
      def set seconds
        @gate_time = Time.now + seconds
      end
  
      # Waits until the gate is opened.
      # +block+ - true by default.  If false, the method will not block, but will return the amount of time
      # left before the gate opens.
      # An optional Ruby block can be passed when +block+ is true that will be evaluated
      # every 0.5 seconds.  If the block evaluates to false, the latch is released and this method returns.
      def wait block = true
        if block
          guard = block_given? ? yield : true
          while Time.now < @gate_time && guard do
            sleep 0.5
          end
        else
          Time.now < @gate_time
        end
      end
  
      def initialize
        @gate_time = Time.now
      end
    end
  
    class << self
      # Evaluated the passed block and returns the elapsed wall clock time.
      def elapsed_time &block
        start_time = Time.now
        yield
        Time.now - start_time
      end
      
      # Sleeps the specified interval.  If a block is passed, it will be evaluated every +guard_interval+ seconds.
      # If it evaluates to true, the sleep will be interrupted and control will be returned to the caller.
      def interruptable_sleep sleep_time, guard_interval=0.5
        if block_given?
          while( yield && sleep_time > 0 ) 
            sleep guard_interval
            sleep_time -= guard_interval
          end
        else
          sleep sleep_time
        end
      end
    end
  end
end
