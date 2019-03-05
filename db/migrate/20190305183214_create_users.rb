class CreateUsers < ActiveRecord::Migration[5.2]
    def change
        create_table :users do |t|
            t.string :first_name
            t.string :last_name
            t.string :gamer_tag
            t.string :password_digest
            t.string :avatar_url
            t.string :location
        end
    end
end
