class Discussion < ActiveRecord::Base
  attr_accessible :Date,:Time,:Message,:Name
  validates :Name, presence:true
  validates :Message, presence:true
  end
