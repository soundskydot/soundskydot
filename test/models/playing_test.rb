# == Schema Information
#
# Table name: playings
#
#  id         :integer          not null, primary key
#  song_id    :integer          not null
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PlayingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
