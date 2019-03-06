class User < ApplicationRecord
    has_many :matchups
    has_many :games, through: :matchups

    def full_name
        "#{self.first_name} #{self.last_name}"
    end


end
