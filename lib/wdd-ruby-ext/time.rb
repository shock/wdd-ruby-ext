
class DateTime
  LOG_TIME_FORMAT = "%a %Y-%m-%d %H:%M:%S"
  
  # Format date and time for log timestamp
  def ltf
    strftime(LOG_TIME_FORMAT)
  end
end

class Time
  LOG_TIME_FORMAT = "%a %Y-%m-%d %H:%M:%S"
  
  # Format date and time for log timestamp
  def ltf
    strftime(LOG_TIME_FORMAT)
  end
end

if defined? ActiveSupport::TimeWithZone
  class ActiveSupport::TimeWithZone
    LOG_TIME_FORMAT = "%a %Y-%m-%d %H:%M:%S"
  
    # Format date and time for log timestamp
    def ltf
      strftime(LOG_TIME_FORMAT)
    end
  end
end

