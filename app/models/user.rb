class User < ApplicationRecord
    has_many :matchups
    has_many :games, through: :matchups

    validates :gamer_tag, presence: true, uniqueness: true
    validates :password_digest, presence: true

    def full_name
        "#{self.first_name} #{self.last_name}"
    end


end
