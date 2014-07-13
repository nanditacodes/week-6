class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :description, :text
    add_column :users, :profile_pic, :string
    add_column :users, :location, :string
  end
end
