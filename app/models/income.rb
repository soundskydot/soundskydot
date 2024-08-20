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
class Income < ApplicationRecord
  belongs_to :member
  belongs_to :song

  def self.ransackable_associations(auth_object = nil)
    ["member", "song"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["amount", "created_at", "id", "id_value", "member_id", "song_id", "updated_at", "user_id"]
  end
end
