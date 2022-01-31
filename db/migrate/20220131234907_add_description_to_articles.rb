class AddDescriptionToArticles < ActiveRecord::Migration[7.0]
  def change
    #command, table, column, data_type
    add_column :articles, :description, :text
  end
end
