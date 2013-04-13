class VendorsController < ApplicationController
  # GET /vendors
  # GET /vendors.json
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def data
    if current_user.has_role? :super_admin
      @vendors = Vendor.all
    else
      @vendors = Vendor.where("society_id = ?", current_user.society_id)
    end
  end

  def dbaction
    #called for all db actions
    vendor_name     = params["c0"]
    contact_name    = params["c1"]
    vendor_phone    = params["c2"]
    vendor_email    = params["c3"]
    service_type    = params["c4"]
    payee_name      = params["c5"]
    address         = params["c6"]
    stax_reg_number = params["c7"]
    service_tax_rate = params["c8"]
    pan_number      = params["c9"]
    is_recurring    = params["c10"]
    vat_number      = params["c11"]
    section_code    = params["c12"]
    avatar_file_name = params["c13"]
    society_id      = params["c14"]
     
    @mode = params["!nativeeditor_status"]
                  
    @id = params["gr_id"]
    case @mode
      when "inserted"
        vendor = Vendor.new
        vendor.vendor_name = vendor_name
        vendor.contact_name = contact_name
        vendor.vendor_phone = vendor_phone
        vendor.vendor_email = vendor_email
        vendor.service_type = service_type
        vendor.stax_reg_number = stax_reg_number
        vendor.service_tax_rate = service_tax_rate
        vendor.pan_number = pan_number
        vendor.is_recurring = is_recurring
        vendor.vat_number = vat_number
        vendor.section_code = section_code
        vendor.payee_name = payee_name
        vendor.address = address
        vendor.avatar_file_name = avatar_file_name
        vendor.society_id = current_user.society_id
        
        vendor.save!
        params[:action] = "insert"
        track_activity vendor
        
        @tid = vendor.id
      when "deleted"
        vendor=Vendor.find(@id)
        vendor.destroy
        params[:action] = "delete"
        track_activity vendor
        
        @tid = @id
      when "updated"
        vendor=Vendor.find(@id)
        vendor.vendor_name = vendor_name
        vendor.contact_name = contact_name
        vendor.vendor_phone = vendor_phone
        vendor.vendor_email = vendor_email
        vendor.service_type = service_type
        vendor.stax_reg_number = stax_reg_number
        vendor.service_tax_rate = service_tax_rate
        vendor.pan_number = pan_number
        vendor.is_recurring = is_recurring
        vendor.vat_number = vat_number
        vendor.section_code = section_code
        vendor.payee_name = payee_name
        vendor.address = address
        vendor.avatar_file_name = avatar_file_name
        vendor.society_id = current_user.society_id

        vendor.save!
        params[:action] = "update"
        track_activity vendor
        
        @tid = @id
    end 
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
  end

  # GET /vendors/new
  # GET /vendors/new.json
end
