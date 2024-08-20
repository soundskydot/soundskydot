class User < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "email", "id", "id_value", "name", "updated_at"]
    end
end
