class RemoveTextFromArticles < ActiveRecord::Migration[8.0]
  def change
    remove_column :articles, :text, :text
  end
end
