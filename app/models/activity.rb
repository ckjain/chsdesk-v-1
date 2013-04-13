class Activity < ActiveRecord::Base

  belongs_to :user
  belongs_to :society
  belongs_to :trackable, polymorphic: true
  attr_accessible :action, :trackable, :society_id, :ip, :browser
  
end
