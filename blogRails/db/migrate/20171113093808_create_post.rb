class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.timestamps
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :category_id
    end
  end
end
