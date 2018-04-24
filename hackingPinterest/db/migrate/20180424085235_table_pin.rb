class TablePin < ActiveRecord::Migration[5.1]
  def change
  	create_table :users
  	create_table :pins
  	create_table :comments
  	add_column :users, :name, :string
  	add_column :pins, :id_user, :integer
  	add_column :pins, :title, :string
  	add_column :pins, :image, :string
    add_column :comments, :id_user, :integer
    add_column :comments, :id_pin, :integer
    add_column :comments, :content, :string
  end
end
