class Unit < ActiveRecord::Base
  # table association
  attr_accessible :unit_number, :building_name, :wing_name, :floor_name, :parking_charges,
  :noc_charges, :property_tax, :maintenance_charge, :sinking_fund, :repair_fund,:other_charge,
  :other_detail, :service_tax, :bill_amount, :assigned, :unit_type_id, :society_id
                  
  has_many :memberships
  has_many :members, :through => :memberships
  has_many :societies, :through => :memberships
  belongs_to :unit_type
  has_many :bills
# validations
  validates :unit_number, :presence => true, 
            :length  => { :within => 1..8 }
  validates :wing_name, :length  => { :maximum => 8 }
  validates :floor_name, :presence => true, 
            :length  => { :within => 1..8 }
  validates :building_name, :presence  => true,
            :length  => { :within => 1..8 }

#  default_scope :order => 'building_name, wing_name, floor_name, unit_number ASC'

  def unit_name
    "#{unit_number}, #{building_name}, #{wing_name}, #{floor_name}"
  end
  
#  property_tax = tax_area.first[:value] * rate_sqft_month.first[:value]
  
#  Unit.(:property_tax) = tax_area * rate_sqft_month
#  joins(:unit_type, :bill_setup).where("society_id like ?", current_user.society_id) 

end
