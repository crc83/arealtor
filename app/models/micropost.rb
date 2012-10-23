class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :presence => true, :length => {:maximum => 40}
end
