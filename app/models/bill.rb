class Bill < ActiveRecord::Base
  attr_accessible  :bill_number, :from_date, :to_date, :bill_date,:membership_id, :property_tax, 
  :maintenance_charges, :parking_charges,:noc_charges, :sinking_fund,:repair_fund, :other_charges,
  :other_detail,:service_tax,:penalty_interest, :discount_amount, :current_bill_charges, 
  :payable_amount, :bill_header_id,:society_id,:image

#  validates :bill_number, :uniqueness => true
#  validates :membership_id, :from_date, :to_date, :bill_date, :presence => true
  
  belongs_to :society
  belongs_to :bill_header
  has_many :members, :through => :membership
  has_many :units, :through => :membership
  has_many :memberships
  
  def bill_create
    bill_header = BillHeader.find(:last)
    membership = Membership.select('id, unit_id').where('status = 1')
    bill_count = membership.count
    pt = Unit.find_by_sql "SELECT c.noc_charges, c.parking_charges, c.property_tax, c.sinking_fund, c.repair_fund, c.other_detail, c.service_tax, c.bill_amount, c.maintenance_charge, c.other_charge, c.discount, c.id 
    FROM units c, member_properties m 
    WHERE m.unit_id = c.id AND m.status =1"

    1.upto bill_count do |i|
    Bill.create(
    :society_id =>  bill_header.society_id,
    :membership_id => membership[i-1].id,
    :bill_header_id => bill_header.id,
    :bill_number => bill_header.bill_number_end + i,
    :from_date => bill_header.from_date,
    :to_date => bill_header.to_date,
    :bill_date => bill_header.bill_date, 
    :property_tax => pt[i-1].property_tax,
    :other_charges => pt[i-1].other_charge,
    :maintenance_charges => pt[i-1].maintenance_charge,
    :repair_fund => pt[i-1].repair_fund,
    :sinking_fund => pt[i-1].sinking_fund,
    :other_detail => pt[i-1].other_detail,
    :service_tax => pt[i-1].service_tax,
    :noc_charges => pt[i-1].noc_charges,
    :parking_charges => pt[i-1].parking_charges,
    :discount_amount => pt[i-1].discount,
    :penalty_interest => 1,
    :current_bill_charges => pt[i-1].property_tax+pt[i-1].other_charge+
    pt[i-1].maintenance_charge+pt[i-1].repair_fund+pt[i-1].sinking_fund+
    pt[i-1].service_tax + pt[i-1].parking_charges + pt[i-1].noc_charges - pt[i-1].discount,
    :payable_amount => pt[i-1].property_tax+pt[i-1].other_charge+
    pt[i-1].maintenance_charge+pt[i-1].repair_fund+pt[i-1].sinking_fund+
    pt[i-1].service_tax + pt[i-1].parking_charges + pt[i-1].noc_charges - pt[i-1].discount
    )

    end
  end

end
