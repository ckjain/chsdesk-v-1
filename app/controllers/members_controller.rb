class MembersController < ApplicationController
#    skip_authorization_check
  before_filter :authenticate_user!
  load_and_authorize_resource 
  respond_to :html, :json

  def index
    if current_user.has_role? :super_admin
      @members = Member.order(:name)
    else
      @members = Member.where("society_id like ?", current_user.society_id).order(:name)      
    end

    respond_to do |format|
      format.html
      format.json { render json: @members.tokens(params[:q]) }
    end
  end
  
  def new
    @members = Member.new
#    :society_id => current_user.society_id
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @members }
    end
  end

  # GET /staffs/1/edit
  def edit
    @members = Member.find(params[:id])
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @members = Member.new(params[:staff])
    @members.society_id = current_user.society_id

    respond_to do |format|
      if @members.save
        format.html { redirect_to @members, only_path: true, notice: 'Staff was successfully created.' }
        format.json { render json: @members, status: :created, location: @members }
      else
        format.html { render action: "new" }
        format.json { render json: @members.errors, status: :unprocessable_entity }
      end
    end
  end

  def data
    if current_user.has_role? :super_admin
      @members = Member.all
    else
      @members = Member.where("society_id like ?", current_user.society_id)      
    end
  end
  
  def dbaction
    #called for all db actions
    counter  = params["c0"]
    name     = params["c1"]
    mobile_phone = params["c2"]
    email_id    = params["c3"]
    user_id     = params["c4"]
    society_id  = params["c5"]
    
    @mode = params["!nativeeditor_status"]
    
    @id = params["gr_id"]
    case @mode
      when "inserted"
        member = Member.new
        member.name = name
        member.mobile_phone = mobile_phone
        member.email_id = email_id
        member.user_id = user_id
        member.society_id = current_user.society_id
                
        member.save!
        
        @tid = member.id
      when "deleted"
        member=Member.find(@id)
        member.destroy
        
        @tid = @id
      when "updated"
        member=Member.find(@id)
        member.name = name
        member.mobile_phone = mobile_phone
        member.email_id = email_id
        member.user_id = user_id
        member.society_id = current_user.society_id

        member.save!
        
        @tid = @id
    end 
  end

end
