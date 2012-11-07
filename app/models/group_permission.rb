class GroupPermission < ActiveRecord::Base
  attr_accessible :permission_id, :user_group_id
end
