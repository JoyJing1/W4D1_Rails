class ChangeUserColumnName < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :email

    add_column :users, :username, :text, unique: true
  end
end
