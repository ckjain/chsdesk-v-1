class MembershipsController < ApplicationController
 #   skip_authorization_check
   before_filter :authenticate_user!
  load_and_authorize_resource 

  def view
  end
  
  def data
    if current_user.has_role? :super_admin
      @memberships = Membership.all
    else
      @memberships = Membership.where("society_id = ?", current_user.society_id)
    end
  end
  
  def dbaction
    #called for all db actions
    start_date      = params["c0"]
    unit_id         = params["c1"]
    member_id       = params["c2"]
    member_type     = params["c3"]
    status          = params["c4"]
    end_date        = params["c5"]
    ownership        = params["c6"]
    live_here       = params["c7"]
    email_bills     = params["c8"]
    sms_bills       = params["c9"]
    sms_receipt     = params["c10"]
    is_mc_member    = params["c11"]
    society_id      = params["c12"]
 
    @mode = params["!nativeeditor_status"]
                  
    @id = params["gr_id"]
    case @mode
      when "inserted"
        membership = Membership.new
        membership.start_date = start_date
        membership.unit_id = unit_id
        membership.member_id = member_id
        membership.member_type = "Regular"
        membership.status = true
        membership.end_date = end_date
        membership.ownership = ownership
        membership.live_here = true
        membership.email_bills = true
        membership.sms_bills = true
        membership.sms_receipt = true
        membership.is_mc_member = false
        membership.society_id = current_user.society_id
        
        membership.save!
        params[:action] = "insert"
        track_activity membership
        
        @tid = membership.id
      when "deleted"
        membership=Membership.find(@id)
        membership.destroy
        params[:action] = "delete"
        track_activity membership
        
        @tid = @id
      when "updated"
        membership=Membership.find(@id)
        membership.start_date = start_date
        membership.unit_id = unit_id
        membership.member_id = member_id
        membership.member_type = member_type
        membership.status = status
        membership.end_date = end_date
        membership.ownership = ownership
        membership.live_here = live_here
        membership.email_bills = email_bills
        membership.sms_bills = sms_bills
        membership.sms_receipt = sms_receipt
        membership.is_mc_member = is_mc_member

        membership.save!
        params[:action] = "update"
        track_activity membership
        
        @tid = @id
    end 
  end
  
  def index
  end

end
