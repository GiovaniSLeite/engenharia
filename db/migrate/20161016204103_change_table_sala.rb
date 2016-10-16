class ChangeTableSala < ActiveRecord::Migration
  def change
    add_column :salas, :foto, :string
    add_column :salas, :categoria, :string
  end
end
