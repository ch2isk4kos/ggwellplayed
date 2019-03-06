class User < ApplicationRecord
    has_many :matchups
    has_many :games, through: :matchups

    validates :gamer_tag, :username, presence: true, uniqueness: true
    has_secure_password

    def full_name
        "#{self.first_name} #{self.last_name}"
    end


end
