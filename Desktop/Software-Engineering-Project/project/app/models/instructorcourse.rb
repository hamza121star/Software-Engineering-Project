class Instructorcourse < ActiveRecord::Base
  attr_accessible :coursecode, :coursedescription, :coursename, :instructoremail
  validates :coursecode, presence:true
  validates :instructoremail, presence:true
  validates :coursename, presence:true
 
end
