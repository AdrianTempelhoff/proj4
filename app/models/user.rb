class User < ActiveRecord::Base
  attr_accessible :email, :password, :user_group_id, :username
end
