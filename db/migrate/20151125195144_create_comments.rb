class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.integer :guess
      t.references :event, index: true, foreign_key: true

      t.timestamps
    end
  end
end
