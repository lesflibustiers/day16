class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :user, index: true
      t.belongs_to :lien, index: true
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end
