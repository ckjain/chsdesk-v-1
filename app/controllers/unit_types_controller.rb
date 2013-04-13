class UnitTypesController < ApplicationController
 # skip_authorization_check
   before_filter :authenticate_user!
  load_and_authorize_resource 

  def view
  end
  
  def data
    if current_user.has_role? :super_admin
      @unit_types = UnitType.all
    else
    @unit_types = UnitType.where("society_id = ?", current_user.society_id)      
    end
  end
  
  def dbaction
    #called for all db actions
    type_name         = params["c0"]
    tax_area          = params["c1"]
    maintenance_area  = params["c2"]
    carpet_area       = params["c3"]
    built_area        = params["c4"]
    super_built_area  = params["c5"]
    society_id        = params["c6"]
    
    @mode = params["!nativeeditor_status"]
    
    @id = params["gr_id"]
    case @mode
      when "inserted"
        unit_type = UnitType.new
        unit_type.type_name = type_name
        unit_type.tax_area = tax_area
        unit_type.maintenance_area = maintenance_area
        unit_type.carpet_area = carpet_area
        unit_type.built_area = built_area
        unit_type.super_built_area = super_built_area
        unit_type.society_id = current_user.society_id

        unit_type.save!
        params[:action] = "insert"
        track_activity unit_type
        
        @tid = unit_type.id
      when "deleted"
        unit_type=UnitType.find(@id)
        unit_type.destroy
        params[:action] = "delete"
        track_activity unit_type
        
        @tid = @id
      when "updated"
        unit_type=UnitType.find(@id)
        unit_type.type_name = type_name
        unit_type.tax_area = tax_area
        unit_type.maintenance_area = maintenance_area
        unit_type.carpet_area = carpet_area
        unit_type.built_area = built_area
        unit_type.super_built_area = super_built_area

        unit_type.save!
        params[:action] = "update"
        track_activity unit_type
        
        @tid = @id
    end 
  end
  
  def index
  end

end
