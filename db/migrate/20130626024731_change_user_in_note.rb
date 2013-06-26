class ChangeUserInNote < ActiveRecord::Migration
  def up
  	remove_column :notes, :user
  	add_column :notes, :user_id, :integer
  end

  def down
  	remove_column :notes, :user_id
  	add_column :notes, :user, :string
  end
end
