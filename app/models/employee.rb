class Employee < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  validates_uniqueness_of :email

  validates_format_of :email, :with => VALID_EMAIL_REGEX, :on => :create 

  has_many :entries 



end
