class CreateJabbers < ActiveRecord::Migration
  def change
    create_table :jabbers do |t|
      t.text :message
      t.references :user, index: true

      t.timestamps
    end
  end
end
