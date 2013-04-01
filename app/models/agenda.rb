class Agenda < ActiveRecord::Base
  
  attr_accessible :meeting_agendas, :meeting_id, :resolutions_attributes
  has_many :resolutions
  belongs_to :meeting

#  validates :meeting_agendas, :presence => false

  accepts_nested_attributes_for :resolutions, allow_destroy: true

end
