# This Spinner class is CLI progress meter.
#
# To use it, instantiate a spinner and specify the total number of
# iterations to complete the job.
# 
# Then call update on the spinner at the end of each iteration of work.
#
module WDD
  module Utils
    class Spinner
    private

      @work
      @job

      def spinner
        return(['\\','|','/','-'][@spinner_index%4])
      end

    public

      # refresh_iterations is how many iterations to wait betwee recalculating the velocity
      # display_iterations is how many iterations to wait between display updates
      def initialize max_iterations, job="Working", refresh_iterations=100, display_iterations=10
        $stdout.sync = true
        @max_iterations = max_iterations
        @job = job
        @i = 0
        @spinner_index = 0
        @delta_count = 0
        @start_time = Time.now
        @eta_string = ""
        @average = 0.0
        @refresh_iterations = refresh_iterations
        @display_iterations = display_iterations
      end

      def update
        @i += 1
        @delta_count += 1
        fraction = (@i.to_f/@max_iterations)
        if @i % @refresh_iterations == 0
          now = Time.now
          delta_time = now-@start_time
          time_per_iteration = delta_time.to_f / @delta_count
          x = (@max_iterations-@i) * time_per_iteration
          @eta_string = "#{(x.to_i/60).to_i} mins #{x.to_i%60} secs    "
          @delta_count=0
          @start_time = Time.now
          @average = @refresh_iterations.to_f / delta_time
        end
        if @i % @display_iterations == 0 || @i == @max_iterations
          printf("\r#{@job}: %s %3.2f%s (#{@i}/#{@max_iterations})  AVG: %3.2f/s  Time Left: %s",spinner,(fraction)*100,"%",@average, @eta_string)
          @spinner_index += 1
        end
      end
    end
  end
end
