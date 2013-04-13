class Meeting < ActiveRecord::Base
  
  attr_accessible  :meeting_type_id, :meeting_datetime, :meeting_place, :issued_by, :issue_date,
  :society_id, :agendas_attributes, :meeting_name, :invited_tokens, :attended_tokens
  
  has_many :agendas
  belongs_to :meeting_type
  
  belongs_to :society

  validates :meeting_datetime, :presence => true
  validates :issue_date, :presence => true
#  validates :meeting_place, :presence => true
  validates :meeting_type_id, :presence => true

  default_scope :order => 'meeting_datetime DESC'

  accepts_nested_attributes_for :agendas, allow_destroy: true
#--------token-input------------------
  def meeting_name
    meeting_type.try(:name)
  end
  
  def meeting_name=(name)
    self.meeting_type = MeetingType.find_or_create_by_name(name) if name.present?
  end

  has_many :meeting_invited_members
  has_many :meeting_attended_members
  has_many :members, through: :meeting_invited_members
  has_many :members, through: :meeting_attended_members
  attr_reader :invited_tokens
  attr_reader :attended_tokens
  
  def invited_tokens=(tokens)
    self.member_ids = Member.ids_from_tokens(tokens)
  end
  def attended_tokens=(tokens)
    self.member_ids = Member.ids_from_tokens(tokens)
  end

#  before_create :set_issue_date_to_now

#  def formatted_meeting_datetime
#  meeting_datetime.strftime('%d/%m/%Y %H:%M')
#  end
#  def formatted_meeting_datetime=(time_str)
#    self.meeting_datetime = Time.parse(time_str)
#  end

#----------end------------------------
end
