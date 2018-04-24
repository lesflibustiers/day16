class TablePins < ActiveRecord::Migration[5.1]
  def change
  	change_table :users do |t|
  	  add_column :users, :email, :string
  	  add_column :users, :password, :string
  	end
  end
end
