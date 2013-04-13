class BillSetupsController < ApplicationController
  # GET /bill_setups
  # GET /bill_setups.xml
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
    @bill_setups = BillSetup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bill_setups }
    end
  end

  def view
  end
  
  def data
      if current_user.has_role? :super_admin
        @bill_setups = BillSetup.all
      else
        @bill_setups = BillSetup.where("society_id = ?", current_user.society_id)
      end
  end
  
  def dbaction
#        @bill_setups = BillSetup.where("society_id = ?", current_user.society_id)

    #called for all db actions
    sub_head_name    = params["c1"]
    rate_sqft_month  = params["c2"]
    rate_unit_month  = params["c3"]
    service_tax_pct  = params["c4"]
    days_to_discount = params["c5"]
    discount_pct     = params["c6"]
    society_id       = params["c7"]
     
    @mode = params["!nativeeditor_status"]
                  
    @id = params["gr_id"]
    case @mode
      when "inserted"
        bill_setup = BillSetup.new
        bill_setup.sub_head_name = sub_head_name
        bill_setup.rate_sqft_month = rate_sqft_month
        bill_setup.rate_unit_month = rate_unit_month
        bill_setup.service_tax_pct = service_tax_pct
        bill_setup.days_to_discount = days_to_discount
        bill_setup.discount_pct = discount_pct       
        bill_setup.society_id = current_user.society_id
        
        bill_setup.save!
        params[:action] = "insert"
        track_activity bill_setup
        
        @tid = bill_setup.id
      when "deleted"
        bill_setup=BillSetup.find(@id)
        bill_setup.destroy
        params[:action] = "delete"
        track_activity bill_setup
        
        @tid = @id
      when "updated"
        bill_setup=BillSetup.find(@id)
        bill_setup.sub_head_name = sub_head_name
        bill_setup.rate_sqft_month = rate_sqft_month
        bill_setup.rate_unit_month = rate_unit_month
        bill_setup.service_tax_pct = service_tax_pct
        bill_setup.days_to_discount = days_to_discount
        bill_setup.discount_pct = discount_pct       
 
        bill_setup.save!
        params[:action] = "update"
        track_activity bill_setup
        
        @tid = @id
    end 
  end

end
