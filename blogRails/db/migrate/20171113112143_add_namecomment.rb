class AddNamecomment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :user_id

    add_column :comments, :name, :string
    add_column :comments, :email, :string
  end
end
