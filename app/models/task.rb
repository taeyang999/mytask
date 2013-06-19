class Task < ActiveRecord::Base
  attr_accessible :comment, :created_by, :description, :due_date, :employer, :status, :title, 
  :user_id
  
  belongs_to :user
  has_many :notes
  
end
