class AddBlockedToFriendship < ActiveRecord::Migration
  def change
    add_column :friendships, :blocked, :boolean
  end
end
