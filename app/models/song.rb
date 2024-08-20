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
class Song < ApplicationRecord
  belongs_to :band
  has_one_attached :lagu, :dependent => :destroy

  def self.ransackable_associations(auth_object = nil)
    ["band"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["band_id", "created_at", "id", "id_value", "price", "updated_at", "year", "title", "album", "lagu"]
  end
end
