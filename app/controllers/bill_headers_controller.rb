class BillHeadersController < ApplicationController
  # GET /bill_headers
  # GET /bill_headers.json
  respond_to :html, :json
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
    if current_user.has_role? :super_admin
      @bill_headers = BillHeader.order("id").paginate :page => params[:page], :per_page => 10
      @bill_header = BillHeader.find(params[:bill_header_id]) if params[:bill_header_id]

    else
      @bill_headers = BillHeader.order("id").where("society_id = ?", current_user.society_id).paginate :page => params[:page], :per_page => 10     
      @bill_header = BillHeader.where("society_id = ?", current_user.society_id).find(params[:bill_header_id]) if params[:bill_header_id]
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_headers }
    end
  end

  # GET /bill_headers/1
  # GET /bill_headers/1.json
  def show
    @bill_header = BillHeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_header }
    end
  end

  # GET /bill_headers/new
  # GET /bill_headers/new.json
  def new
    @bill_header = BillHeader.new
#    @meeting.issue_date = Time.now.to_formatted_s(:short)
#    @meeting.meeting_date = 4.days.from_now.to_formatted_s(:short)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_header }
    end
  end

  # GET /bill_headers/1/edit
  def edit
    @bill_header = BillHeader.find(params[:id])
  end

  # POST /bill_headers
  # POST /bill_headers.json
  def create
    @bill_header = BillHeader.new(params[:bill_header])
    @bill_header.society_id = current_user.society_id

    respond_to do |format|
      if @bill_header.save
      track_activity @bill_header
        format.html { redirect_to @bill_header, only_path: true, notice: 'Bill header was successfully created.' }
        format.json { render json: @bill_header, status: :created, location: @bill_header }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_headers/1
  # PUT /bill_headers/1.json
  def update
    @bill_header = BillHeader.find(params[:id])

    respond_to do |format|
      if @bill_header.update_attributes(params[:bill_header])
      track_activity @bill_header
        format.html { redirect_to @bill_header, only_path: true, notice: 'Bill header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_headers/1
  # DELETE /bill_headers/1.json
  def destroy
    @bill_header = BillHeader.find(params[:id])
    @bill_header.destroy
    track_activity @bill_header

    respond_to do |format|
      format.html { redirect_to bill_headers_url, only_path: true }
      format.json { head :no_content }
    end
  end
end
