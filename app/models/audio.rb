# == Schema Information
#
# Table name: audios
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  length     :integer
#  speaker    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  poster     :string(255)
#


class Audio < ActiveRecord::Base
  def start
    @state = "start"
  end
  def stop
    @stop = "stop"
  end

     mount_uploader :poster, PosterUploader

end
