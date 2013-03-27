class Staff < ActiveRecord::Base
  attr_accessible :active, :gender, :joining_date, :society_id, :staff_age, 
  :staff_category, :staff_current_address, :staff_email, :staff_name, 
  :staff_permamnent_address, :staff_phone, :staff_salary, :avatar

  belongs_to :society
#---------paperclip----------------------------------
  has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }
#  validates_attachment :avatar, :presence => true
#  validates_attachment_size :avatar, :size => [< 1000], :message => "has to be in 1000kb size"
  validates_attachment_content_type :avatar, :content_type => ['image/jpg', 'image/pjpeg', 'image/jpeg', 'image/png'], :message => "has to be in jpg/jpeg/png/gif format"

#---------paperclip end-------------------------------
  protected
  
  def set_orientation
    original_image = self.image.to_file(:original)
    dimensions = Paperclip::Geometry.from_file(original_file)
    self.orientation = (dimensions.width > dimensions.height) ? 'landscape' : 'portrait'
  end

end
