class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    secs = @seconds % 60
    minutes = @seconds / 60
    hours = minutes / 60
    sprintf("%02d:%02d:%02d", hours, minutes % 60, secs)
  end
end
