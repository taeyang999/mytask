class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status
      t.datetime :due_date
      t.string :created_by
      t.string :employer
      t.string :comment

      t.timestamps
    end
  end
end
