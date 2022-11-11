class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :opinion_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
