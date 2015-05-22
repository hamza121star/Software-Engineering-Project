class Studentcourse < ActiveRecord::Base
  attr_accessible :coursecode, :date_of_joining, :email
  validates :coursecode, presence:true
  validates :email, presence:true
 
end
