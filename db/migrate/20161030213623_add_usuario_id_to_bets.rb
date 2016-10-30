class AddUsuarioIdToBets < ActiveRecord::Migration
  def change
    add_column :bets, :usuario_id, :integer
  end
end
