class SocietiesController < ApplicationController
 # skip_authorization_check
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
    @societies = Society.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @societies.map(&:name)
  end
  
  def view
  end
  
  def data
    if current_user.has_role? :super_admin
      @societies = Society.all
    else
      @societies = Society.where("id like ?", current_user.society_id)      
    end
  end
  
  def dbaction
    #called for all db actions
    name                = params["c0"]
    number_of_flats     = params["c1"]
    active              = params["c2"]
    society_address_line1       = params["c3"]
    society_address_line2       = params["c4"]
    society_city        = params["c5"]
    society_pincode     = params["c6"]
    society_state       = params["c7"]
    society_country     = params["c8"]
    govt_address_line1  = params["c9"]
    govt_address_line2        = params["c10"]
    govt_address_city         = params["c11"]
    govt_address_pincode      = params["c12"]
    govt_address_plotnumber   = params["c13"]
    registration_number       = params["c14"]
    govt_ward_number          = params["c15"]
    
    @mode = params["!nativeeditor_status"]
    
    @id = params["gr_id"]
    case @mode
      when "inserted"
        society = Society.new
        society.name = name
        society.number_of_flats = number_of_flats
        society.active = active
        society.society_address_line1 = society_address_line1
        society.society_address_line2 = society_address_line2
        society.society_city = society_city
        society.society_pincode = society_pincode
        society.society_state = society_state
        society.society_country = society_country
        society.govt_address_line1 = govt_address_line1
        society.govt_address_line2 = govt_address_line2
        society.govt_address_city = govt_address_city
        society.govt_address_pincode = govt_address_pincode
        society.govt_address_plotnumber = govt_address_plotnumber
        society.registration_number = registration_number
        society.govt_ward_number = govt_ward_number

        society.save!
        
        @tid = society.id
      when "deleted"
        society=Society.find(@id)
        society.destroy
        
        @tid = @id
      when "updated"
        society=Society.find(@id)
        society.name = name
        society.number_of_flats = number_of_flats
        society.active = active
        society.society_address_line1 = society_address_line1
        society.society_address_line2 = society_address_line2
        society.society_city = society_city
        society.society_pincode = society_pincode
        society.society_state = society_state
        society.society_country = society_country
        society.govt_address_line1 = govt_address_line1
        society.govt_address_line2 = govt_address_line2
        society.govt_address_city = govt_address_city
        society.govt_address_pincode = govt_address_pincode
        society.govt_address_plotnumber = govt_address_plotnumber
        society.registration_number = registration_number
        society.govt_ward_number = govt_ward_number

        society.save!
        
        @tid = @id
    end 
  end
  

end
