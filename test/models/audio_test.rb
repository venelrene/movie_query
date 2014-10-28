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

require 'test_helper'

class AudioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
