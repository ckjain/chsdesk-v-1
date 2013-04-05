class BillsController < ApplicationController
  # GET /bills
  # GET /bills.json
  before_filter :authenticate_user!
  load_and_authorize_resource 

  
  def view
 
  end
  
  def data
      if current_user.has_role? :super_admin
        @bills = Bill.all
      else
        @bills = Bill.where("society_id = ?", current_user.society_id)
      end
  end
  
  def dbaction
    #called for all db actions
      bill_number       = params["c0"]
      from_date         = params["c1"]
      to_date           = params["c2"]
      bill_date         = params["c3"]
      membership_id     = params["c4"]
      parking_charges   = params["c5"]
      noc_charges       = params["c6"]
      property_tax      = params["c7"]
      maintenance_charges  = params["c8"]
      sinking_fund      = params["c9"]
      repair_fund       = params["c10"]
      other_charges     = params["c11"]
      other_detail      = params["c12"]
      service_tax       = params["c13"]
      penalty_interest  = params["c14"]
      discount_amount   = params["c15"]
      current_bill_charges  = params["c16"]
      payable_amount    = params["c17"]
      bill_header_id    = params["c18"]
      society_id        = params["c19"]

    @mode = params["!nativeeditor_status"]
                  
    @id = params["gr_id"]
    case @mode
      when "inserted"
        bill = Bill.new
        bill.bill_number = bill_number
        bill.from_date = from_date
        bill.to_date = to_date
        bill.bill_date = bill_date
        bill.membership_id = membership_id
        bill.parking_charges = parking_charges       
        bill.noc_charges = noc_charges
        bill.property_tax  = property_tax
        bill.maintenance_charges  = maintenance_charges
        bill.sinking_fund     = sinking_fund
        bill.repair_fund      = repair_fund
        bill.other_charges    = other_charges
        bill.other_detail     = other_detail
        bill.service_tax      = service_tax
        bill.penalty_interest = penalty_interest
        bill.discount_amount  = discount_amount
        bill.current_bill_charges  = current_bill_charges
        bill.payable_amount   = payable_amount
        bill.bill_header_id   = bill_header_id
        bill.society_id       = current_user.society_id
        
        bill.save!
        
        @tid = bill.id
      when "deleted"
        bill=Bill.find(@id)
        bill.destroy
        
        @tid = @id
      when "updated"
        bill=Bill.find(@id)
        bill.bill_number = bill_number
        bill.from_date = from_date
        bill.to_date = to_date
        bill.bill_date = bill_date
        bill.membership_id = membership_id
        bill.parking_charges = parking_charges       
        bill.noc_charges = noc_charges
        bill.property_tax  = property_tax
        bill.maintenance_charges  = maintenance_charges
        bill.sinking_fund     = sinking_fund
        bill.repair_fund      = repair_fund
        bill.other_charges    = other_charges
        bill.other_detail     = other_detail
        bill.service_tax      = service_tax
        bill.penalty_interest = penalty_interest
        bill.discount_amount  = discount_amount
        bill.current_bill_charges  = current_bill_charges
        bill.payable_amount   = payable_amount
        bill.bill_header_id   = bill_header_id
        bill.society_id       = current_user.society_id
 
        bill.save!
        
        @tid = @id
    end 
  end


  def index
    @bills = Bill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bills }
    end
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    @bill = Bill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill }
    end
  end

  # GET /bills/new
  # GET /bills/new.json
  def new
    @bill = Bill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill }
    end
  end

  # GET /bills/1/edit
  def edit
    @bill = Bill.find(params[:id])
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = Bill.new(params[:bill])

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        format.json { render json: @bill, status: :created, location: @bill }
      else
        format.html { render action: "new" }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bills/1
  # PUT /bills/1.json
  def update
    @bill = Bill.find(params[:id])

    respond_to do |format|
      if @bill.update_attributes(params[:bill])
        format.html { redirect_to @bill, only_path: true, notice: 'Bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy

    respond_to do |format|
      format.html { redirect_to bills_url, only_path: true }
      format.json { head :no_content }
    end
  end
end
