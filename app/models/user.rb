class User < ApplicationRecord
    has_many :matchups
    has_many :games, through: :matchups
end
