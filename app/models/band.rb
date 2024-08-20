# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Band < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "updated_at", "members"]
    end
    def self.ransackable_associations(auth_object = nil)
        ["members"]
    end
    
    has_many :members, :dependent => :destroy
    accepts_nested_attributes_for :members
end
