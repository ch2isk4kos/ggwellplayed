class CreateMatchups < ActiveRecord::Migration[5.2]
    def change
        create_table :matchups do |t|
            t.integer :user_id
            t.integer :opponent_id
            t.integer :game_id
            t.integer :winner_id
        end
    end
end
