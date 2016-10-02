class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.string :name
      t.string :description
      t.integer :idOwner
      t.integer :sala_type
      t.string :reward
      t.integer :stake

      t.timestamps null: false
    end
  end
end
