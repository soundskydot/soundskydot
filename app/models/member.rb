# == Schema Information
#
# Table name: members
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  name       :string
#  position   :integer
#  royalty    :float
#  wallet     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Member < ApplicationRecord
  belongs_to :band
  has_many :incomes, :dependent => :destroy

  def self.ransackable_associations(auth_object = nil)
    ["band"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["band_id", "created_at", "id", "id_value", "name", "position", "royalty", "updated_at"]
  end

  enum position: { 
    Vocalist: 0, 
    Drummer: 1, 
    Guitaris: 2, 
    Platform: 3, 
    Publisher: 4, 
    Song_Writer: 5,  
    Composer: 6, 
    Bassis: 7,
    Keyboardis: 8,
    User_Listener: 9
  }

  def self.earning
    1000
  end
end
