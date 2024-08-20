# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  price      :float
#  year       :integer
#  title      :string
#  album      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
