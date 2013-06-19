class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :task_id
      t.text :description
      t.string :user

      t.timestamps
    end
  end
end
