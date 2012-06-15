class Agenda < ActiveRecord::Base
  
  attr_accessible :meeting_agendas, :meeting_id, :resolutions_attributes
  has_many :resolutions
  belongs_to :meeting

  accepts_nested_attributes_for :resolutions, allow_destroy: true

end
