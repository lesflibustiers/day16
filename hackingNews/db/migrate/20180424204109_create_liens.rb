class CreateLiens < ActiveRecord::Migration[5.1]
  def change
    create_table :liens do |t|
      t.string :name
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
