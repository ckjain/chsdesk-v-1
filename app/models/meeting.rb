class Meeting < ActiveRecord::Base
  
  attr_accessible  :meeting_type_id, :meeting_date, :meeting_place, :issued_by, :issue_date,
  :society_id, :agendas_attributes, :meeting_name, :author_tokens
  
  has_many :agendas
  belongs_to :meeting_type
  
  belongs_to :society

  validates :meeting_date, :presence => true
  validates :issue_date, :presence => true
#  validates :meeting_place, :presence => true
  validates :meeting_type_id, :presence => true

  default_scope :order => 'meeting_date DESC'

  accepts_nested_attributes_for :agendas, allow_destroy: true
#--------token-input------------------
  def meeting_name
    meeting_type.try(:name)
  end
  
  def meeting_name=(name)
    self.meeting_type = MeetingType.find_or_create_by_name(name) if name.present?
  end

  has_many :meeting_members
  has_many :members, through: :meeting_members
  attr_reader :author_tokens
  
  def author_tokens=(tokens)
    self.member_ids = Member.ids_from_tokens(tokens)
  end
#  before_create :set_issue_date_to_now

#  def formatted_meeting_date
#  meeting_date.strftime('%d/%m/%Y %H:%M')
#  end
#  def formatted_meeting_date=(time_str)
#    self.meeting_date = Time.parse(time_str)
#  end

#----------end------------------------
end
