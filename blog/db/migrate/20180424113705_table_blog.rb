class TableBlog < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |user|
  	  user.string :first_name
  	  user.string :last_name
  	  user.string :user_name
  	  user.string :email_adress
  	  user.string :password
  	end
    create_table :articles do |article|
      article.string :title
      article.integer :id_user
      article.text :body
      article.string :category
    end
    create_table :categories do |category|
      category.string :name
    end
  end
end
