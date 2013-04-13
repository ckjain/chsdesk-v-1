class MembersController < ApplicationController
#    skip_authorization_check
  before_filter :authenticate_user!
  load_and_authorize_resource 
  respond_to :html, :json

  def index
    if current_user.has_role? :super_admin
      @members = Member.order(:name)
    else
      @members = Member.where("society_id = ?", current_user.society_id).order(:name)
    end

    respond_to do |format|
      format.html
      format.json { render json: @members.where("name ilike ?", "%#{params[:q]}%") }
    end
  end

  def new
    @member = Member.new
#    @member_society_id = current_user.society_id
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @members }
    end
  end

  # GET /staffs/1/edit
  def edit
    @member = Member.find(params[:id])
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @member = Member.new(params[:member])
    @member.society_id = current_user.society_id

    respond_to do |format|
      if @member.save
        format.html {render :json => [@member.to_jq_member].to_json, :content_type => 'text/html', :layout => false }
        format.json { render json: [@member.to_jq_member].to_json, status: :created, location: @member }
      else
        format.html { render action: "new" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Members/1
  # PUT /Members/1.json
  def update
    @member = Member.find(params[:id])
#    @member.society_id = current_user.society_id

    respond_to do |format|
      if @member.update_attributes(params[:member])
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def data
    if current_user.has_role? :super_admin
      @members = Member.all
    else
      @members = Member.where("society_id = ?", current_user.society_id)
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
        params[:action] = "insert"
        track_activity member

        @tid = member.id
      when "deleted"
        member=Member.find(@id)
        member.destroy
        params[:action] = "delete"
        track_activity member

        @tid = @id
      when "updated"
        member=Member.find(@id)
        member.name = name
        member.mobile_phone = mobile_phone
        member.email_id = email_id
        member.user_id = user_id
        member.society_id = current_user.society_id

        member.save!
        params[:action] = "update"
        track_activity member
        
        @tid = @id
    end 
  end

end
