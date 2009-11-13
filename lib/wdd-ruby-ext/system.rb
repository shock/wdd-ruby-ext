
module Process
  # Returns the current process' resident memory size in KB.  May not work on all OS's.   Tested on Mac OS X only.
  def self.mem_size
    pid = Process.pid
    mem = `ps -o rsz #{pid}`
    mem.gsub!("RSZ", "").strip!
    mem
  end
  
  # Prints the process' current resident memory size with an optional +position+ marker.
  def self.show_mem position = "undefined"
    mem = Process.mem_size
    printf( "Resident Memory Size: #{mem}K - #{position}\n" )
  end
end

