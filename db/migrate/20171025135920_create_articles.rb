class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :genre, null:false
      t.text   :content
      t.timestamps
    end
  end
end
