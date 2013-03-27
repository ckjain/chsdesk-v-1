class MeetingTypesController < ApplicationController
  # GET /meeting_types
  # GET /meeting_types.json
  def index
    @meeting_types = MeetingType.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @meeting_types.map(&:name)
  end

  # GET /meeting_types/1
  # GET /meeting_types/1.json
  # GET /meeting_types/new
  # GET /meeting_types/new.json
  def new
    @meeting_type = MeetingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting_type }
    end
  end

  # GET /meeting_types/1/edit
  def edit
    @meeting_type = MeetingType.find(params[:id])
  end

  # POST /meeting_types
  # POST /meeting_types.json
  def create
    @meeting_type = MeetingType.new(params[:meeting_type])

    respond_to do |format|
      if @meeting_type.save
        format.html { redirect_to @meeting_type, only_path: true, notice: 'Meeting type was successfully created.' }
        format.json { render json: @meeting_type, status: :created, location: @meeting_type }
      else
        format.html { render action: "new" }
        format.json { render json: @meeting_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meeting_types/1
  # PUT /meeting_types/1.json
  def update
    @meeting_type = MeetingType.find(params[:id])

    respond_to do |format|
      if @meeting_type.update_attributes(params[:meeting_type])
        format.html { redirect_to @meeting_type, only_path: true, notice: 'Meeting type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meeting_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_types/1
  # DELETE /meeting_types/1.json
  def destroy
    @meeting_type = MeetingType.find(params[:id])
    @meeting_type.destroy

    respond_to do |format|
      format.html { redirect_to meeting_types_url, only_path: true }
      format.json { head :no_content }
    end
  end
end
