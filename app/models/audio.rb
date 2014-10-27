class Audio < ActiveRecord::Base
  def start
    @state = "start"
  end
  def stop
    @stop = "stop"
  end
end
