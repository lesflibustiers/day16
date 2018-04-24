class TableOriginNews < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |user|
      user.string :first_name
      user.string :last_name
      user.string :user_name
      user.string :email_adress
      user.string :password
  	end
  	create_table :links do |link|
  	  link.integer :id_user
  	  link.text :content
  	end
  	create_table :comments do |comment|
  	  comment.integer :id_link
  	  comment.integer :id_comment
  	  comment.string :content
  	end
  end
end
