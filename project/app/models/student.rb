class Student < ActiveRecord::Base
  attr_accessible :dob, :email, :gender, :name, :password
validates :email, presence:true
validates :name, presence:true
validates :password, length: {minimum:5}
end
