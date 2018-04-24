class TableMooks < ActiveRecord::Migration[5.1]
  def change
  	create_table :cours
  	create_table :lessons
  	add_column :cours, :title, :string
  	add_column :cours, :description, :text
  	add_column :lessons, :id_cours, :integer
  	add_column :lessons, :title, :string
  	add_column :lessons, :body, :text
  end
end
