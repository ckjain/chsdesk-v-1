class MeetingsController < ApplicationController
  # GET /meetings
  # GET /meetings.json
  respond_to :html, :json
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
    if current_user.has_role? :super_admin
      @meetings = Meeting.order("meeting_name").paginate :page => params[:page], :per_page => 10
      @meeting = Meeting.find(params[:meeting_id]) if params[:meeting_id]

    else
      @meetings = Meeting.where("society_id like ?", current_user.society_id).paginate :page => params[:page], :per_page => 10     
      @meeting = Meeting.where("society_id like ?", current_user.society_id).find(params[:meeting_id]) if params[:meeting_id]
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meetings }
    end
  end


  # GET /meetings/1
  # GET /meetings/1.json
  def show
    @meeting = Meeting.find(params[:id])
  end

  # GET /meetings/new
  # GET /meetings/new.json
  def new
    @meeting = Meeting.new
    @meeting.issue_date = Time.now.to_formatted_s(:short)
    @meeting.meeting_date = 4.days.from_now.to_formatted_s(:short)
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting }
    end
  end

  # GET /meetings/1/edit
  def edit
    @meeting = Meeting.find(params[:id])
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(params[:meeting])
    @meeting.society_id = current_user.society_id
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, only_path: true , notice: 'Meeting was successfully created.' }
        format.json { render json: @meeting, status: :created, location: @meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meetings/1
  # PUT /meetings/1.json
  def update
    @meeting = Meeting.find(params[:id])

      if @meeting.update_attributes(params[:meeting])
        redirect_to @meeting, only_path: true , notice: 'Meeting was successfully updated.'
      else
        render :edit
      end
  end
  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_to meetings_url, only_path: true  }
      format.json { head :no_content }
    end
  end
end
