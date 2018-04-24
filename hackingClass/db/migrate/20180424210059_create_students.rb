class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.belongs_to :cour, index: true
      t.timestamps
    end
  end
end
