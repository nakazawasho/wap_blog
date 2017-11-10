class ChangeColumnToArticles < ActiveRecord::Migration[5.0]
  def change
    change_column :articles, :genre, :integer, null: false, default: 0
  end
end
