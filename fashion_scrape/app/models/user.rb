class User < ActiveRecord::Base
  attr_accessible :designer_list, :email, :name, :password, :size
end
