class AddPhotoToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :photo, :string
  end
end
