class LinkInfo < ActiveRecord::Base
  attr_accessible :content, :des, :title, :user_id
  belongs_to :user
end
