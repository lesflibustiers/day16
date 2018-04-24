class TableBlogChange < ActiveRecord::Migration[5.1]
  def change
  	change_table :categories do |category|
      category.integer :id_article
    end
    create_table :tags do |tag|
      tag.string :tag_content
      tag.integer :id_category
    end
  end
end
