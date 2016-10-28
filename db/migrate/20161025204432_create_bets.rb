class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :name
      t.string :description
      t.integer :ownerId
      t.string :url_photo
      t.string :category
      t.integer :room_status
      t.integer :room_type
      t.integer :stake
      t.date :final_date
      t.string :final_answer
      t.string :answer_type

      t.timestamps null: false
    end
  end
end
