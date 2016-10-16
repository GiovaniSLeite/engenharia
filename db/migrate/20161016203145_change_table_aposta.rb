class ChangeTableAposta < ActiveRecord::Migration
  def change
    add_column :aposta, :vencedor, :boolean
    add_column :aposta, :status, :integer
  end
end
