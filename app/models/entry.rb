class Entry < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :employee_id
  validates_presence_of :quantity

  belongs_to :employee
end
