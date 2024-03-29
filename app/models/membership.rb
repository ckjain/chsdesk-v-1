class Membership < ActiveRecord::Base
  # stat date to be in past and before end date
#status read only
  attr_accessible :unit_id, :society_id, :member_id, :member_type, :start_date, :end_date, 
  :status, :live_here, :email_bills, :sms_bills, :sms_receipt, :is_mc_member, :ownership 
  #, :user_id
  belongs_to :member
  belongs_to :unit
  belongs_to :society
#  belongs_to :user
# def user_email
#     "#{member.user_id}"
#    @user=User.where('id = ?', member.user_id)
   
#     User[member.user_id].all
# end
def member_name
      "#{member.first_name}, #{member.last_name}, #{member.mobile_phone}"
end

  def property_name
    "#{unit.unit_number}, #{unit.building_name.capitalize}, #{unit.wing_name.capitalize}, #{unit.floor_name}"
  end
  default_scope :order => 'memberships.updated_at DESC'

    def unit_id_presence_of 
      if !unit_id.blank? and unit_id < 1
        errors.add(:unit_id, "can't be blank")
      end 
    end

    def end_date_cannot_be_before
       if !end_date.blank? and end_date < start_date
          errors.add(:end_date, "can't be before start date")
       end 
    end

  scope :assign_search, lambda { |search| 
    search = "%#{search}%"
    where('', search)
    joins(:unit, :member).where('units.unit_number LIKE ? OR units.building_name LIKE ? OR units.wing_name LIKE ? OR members.last_name LIKE ? OR members.first_name LIKE ? ', search, search, search, search, search)
  
   }

   def updated_status
    Membership.where('end_date <> ?', '0000-00-00').update_all(:status => false)
    @mpunit = Membership.select('unit_id').where('updated_at > ? AND status = ? AND start_date <> ?' , 5.seconds.ago, '0', '0000-00-00')
          if updated_at > 5.seconds.ago
              Unit.where('id = ?', @mpunit[0].unit_id).update_all(:assigned => false)
          end
      updated_at > 5.minutes.ago
   end

    @total_unit = Unit.select('id').where('assigned = ?', '0')
    @total_unit_count = @total_unit.count
        1.upto @total_unit_count do |i|
              Membership.create(
              :unit_id =>  @total_unit[i-1].id,
              :member_id => '1',
              :society_id => '1',
              :member_type => 'Regular',
              :status => '1'
             )
          Unit.where('id = ?', @total_unit[i-1].id).update_all(:assigned => true)
        end unless @total_unit_count.nil?

  scope :assigned, joins(:unit).where('unit.unit_id = ?', true)

end
