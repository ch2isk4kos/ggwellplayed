class CreateGames < ActiveRecord::Migration[5.2]
    def change
        create_table :games do |t|
            t.string :title
            t.string :description
            t.string :platform
            t.string :genre
            t.integer :esrb_rating
        end
    end
end
