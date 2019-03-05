class Game < ApplicationRecord
    has_many :matchups
    has_many :users, through: :matchups
end
