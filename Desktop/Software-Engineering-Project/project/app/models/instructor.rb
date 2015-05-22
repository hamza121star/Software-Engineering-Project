class Instructor < ActiveRecord::Base
  attr_accessible :DoB, :Full_Name, :Your_Description
  validates :Full_Name, presence:true
  #validates :password, length: {minimum:5}

end
