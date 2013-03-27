class Society < ActiveRecord::Base
    attr_accessible :name, :number_of_flats, :active,  :society_address_line1, 
    :society_address_line2, :society_city, :society_pincode, :society_state, :society_country,
    :govt_address_line1, :govt_address_line2, :govt_address_city, :govt_address_pincode,
    :govt_address_plotnumber, :registration_number, :govt_ward_number

#  accepts_nested_attributes_for :users, :allow_destroy => true

   # Automatically create the virtual attribute 'password_confirmation'.
#  has_many :invoices
  has_many :users
#  belongs_to :user

  has_many :memberships
  has_many :members, :through => :memberships
  has_many :units, :through => :memberships

  def society_name
    "#{name.capitalize}"
  end

#  accepts_nested_attributes_for :units, :allow_destroy => true
#  attr_reader :unit_tokens
#  attr_reader :member_tokens

  
end
