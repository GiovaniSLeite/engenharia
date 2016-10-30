class RemoveUsuariosIdToBets < ActiveRecord::Migration
  def change
    remove_column :bets, :usuarios_id
  end
end
