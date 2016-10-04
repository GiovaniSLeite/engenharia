class CreateAposta < ActiveRecord::Migration
  def change
    create_table :aposta do |t|
      t.string :idSala
      t.integer :idUser
      t.string :palpite

      t.timestamps null: false
    end
  end
end
