class BlogDropColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :categories, :id_article
  end
end
