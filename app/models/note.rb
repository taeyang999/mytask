class Note < ActiveRecord::Base
  attr_accessible :description, :task_id, :user
  
  belongs_to :task
  
end
