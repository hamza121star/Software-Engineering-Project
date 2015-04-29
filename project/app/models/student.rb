class Student < ActiveRecord::Base
  attr_accessible :dob, :email, :gender, :name, :password
end
