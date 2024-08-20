# == Schema Information
#
# Table name: incomes
#
#  id         :integer          not null, primary key
#  member_id  :integer          not null
#  song_id    :integer          not null
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class IncomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
