class Task < ActiveRecord::Base
  attr_accessible :comment, :created_by, :description, :due_date, :employer, :status, :title, 
  :user_id
  
  belongs_to :user
  has_many :notes
  
  validates_presence_of :title, :description, :status, :due_date
  
def self.search(search)
  if search
    result = find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    result = result + find(:all, :conditions => ['description LIKE ?', "%#{search}%"])
    result = result + find(:all, :conditions => ['status LIKE ?', "%#{search}%"])
    end
    return result
  else
    return find(:all)
  end

end
