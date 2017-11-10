class ChangeDatatypeGenreOfArticles < ActiveRecord::Migration[5.0]
  def change
    change_column :articles, :genre, :integer
  end
end
