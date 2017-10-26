class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.text   :email, null:false, unique: true
      t.boolean :authentication, null:false, default: 0
      t.timestamps
    end
  end
end
