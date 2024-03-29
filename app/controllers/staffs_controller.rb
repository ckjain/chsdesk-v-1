class StaffsController < ApplicationController
  # GET /staffs
  # GET /staffs.json
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
    if current_user.has_role? :super_admin
      @staffs = Staff.order(:staff_name).paginate :page => params[:page], :per_page => 10
      @staff  = Staff.find(params[:staff_id]) if params[:staff_id]
    else
      @staffs = Staff.where("society_id = ?", current_user.society_id).order(:staff_name).paginate :page => params[:page], :per_page => 10      
      @staff  = Staff.where("society_id = ?", current_user.society_id).find(params[:staff_id]) if params[:staff_id]
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffs }
    end
  end


  # GET /staffs/1
  # GET /staffs/1.json
  def show
    if current_user.has_role? :super_admin
      @staff = Staff.find(params[:id])
    else
      @staff = Staff.where("society_id = ?", current_user.society_id).find(params[:id])
    end
      if @staff.blank?
        redirect_to staffs_url, :notice => "You don't have access to staff with this ID"
      else
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @staff }
      end
    end
  end


  # GET /staffs/new
  # GET /staffs/new.json
  def new
    @staff = Staff.new
#    :society_id => current_user.society_id
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staff }
    end
  end

  # GET /staffs/1/edit
  def edit
    @staff = Staff.find(params[:id])
  end

  # POST /staffs
  # POST /staffs.json
  def create
    @staff = Staff.new(params[:staff])
    @staff.society_id = current_user.society_id

    respond_to do |format|
      if @staff.save
      track_activity @staff
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render json: @staff, status: :created, location: @staff }
      else
        format.html { render action: "new" }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staffs/1
  # PUT /staffs/1.json
  def update
    @staff = Staff.find(params[:id])

    respond_to do |format|
      if @staff.update_attributes(params[:staff])
      track_activity @staff
        format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffs/1
  # DELETE /staffs/1.json
  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy
      track_activity @staff

    respond_to do |format|
      format.html { redirect_to staffs_url }
      format.json { head :no_content }
    end
  end
end
