class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :email
      t.string :access_token
      t.string :uid
      t.string :photo_url
      t.string :provider
      t.boolean :status
      t.string :reason
      t.string :user_type
      t.date :data_ingresso

      t.timestamps null: false
    end
  end
end
