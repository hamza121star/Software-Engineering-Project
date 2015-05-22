class Instructor1 < ActiveRecord::Base
  attr_accessible :DoB, :Full_Name, :Your_Description, :email, :password
  validates :email, presence:true
  validates :Full_Name, presence:true
  validates :password, length: {minimum:5}
end
