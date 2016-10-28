class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :bet_id
      t.integer :usuario_id
      t.boolean :won_status
      t.string :guess_text
      t.integer :guess_status

      t.timestamps null: false
    end
  end
end
