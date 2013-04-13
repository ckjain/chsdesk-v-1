class Event < ActiveRecord::Base
  attr_accessible :title, :starts_at, :ends_at, :all_day, :description, :society_id

  validates :starts_at, :presence => true
  validates :ends_at, :presence => true
  validates :title, :presence => true

  belongs_to :society

  scope :before, lambda {|end_time| {:conditions => ["ends_at < ?", Event.format_date(end_time)] }}
  scope :after, lambda {|start_time| {:conditions => ["starts_at > ?", Event.format_date(start_time)] }}
  
  # need to override the json view to return what full_calendar is expecting.
  # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :description => self.description || "",
      :start => starts_at.rfc2822,
      :end => ends_at.rfc2822,
      :allDay => self.all_day,
      :recurring => false,
      :url => Rails.application.routes.url_helpers.event_path(id)
    }
    
  end

  def future_event?
    self.start_at >= Time.zone.now
  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end
end
