require 'aasm_roles'
class User < ActiveRecord::Base
  include AasmRoles
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at,
  :zip, :date_of_birth, :phone_number, :bio, :society_name, :society_id, :state, :avatar_url, :opt_in

  
  after_create :add_user_to_mailchimp unless Rails.env.development?
  before_destroy :remove_user_from_mailchimp unless Rails.env.development?

  # override Devise method
  # no password is required when the account is created; validate password when the user sets one
  has_and_belongs_to_many :roles, :join_table => :users_roles
  
  belongs_to :society
#  has_many :societies
  def society_name
    society.try(:name)
  end
  
  def society_name=(name)
    self.society = Society.find_or_create_by_name(name) if name.present?
  end

  def self.search(search)
    if search
      where('name LIKE ? OR state LIKE ? OR email LIKE ?' , "%#{search}%", "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end

 #------------------------baeapp2
  def admin?
    has_role?(:super_admin)
  end
  
  def site_name
    self.name || self.email.split("@").first
  end

  def username
    User.name
  end
  
  def has_role?(role)
    role_symbols.include?(role.to_sym) || role_symbols.include?(:admin)
  end
  
  def has_real_role?(role)
    role_symbols.include?(role.to_sym)
  end
  
  def role_symbols
    @role_symbols ||= roles.map {|r| r.name.underscore.to_sym }
  end

#----------------------baseapp2 end-----

def password_required?
    if !persisted?
      false
    else
      !password.nil? || !password_confirmation.nil?
    end
  end
  
  # override Devise method
  def confirmation_required?
    false
  end
  
  # override Devise method
  def active_for_authentication?
    confirmed? || confirmation_period_valid?
  end
  
  # new function to set the password
  def attempt_set_password(params)
    p = {}
    p[:password] = params[:password]
    p[:password_confirmation] = params[:password_confirmation]
    update_attributes(p)
  end
  
  # new function to determine whether a password has been set
  def has_no_password?
    self.encrypted_password.blank?
  end

  # new function to provide access to protected method pending_any_confirmation
  def only_if_unconfirmed
    pending_any_confirmation {yield}
  end
    
  private

  def add_user_to_mailchimp
    unless self.email.include?('@example.com') or !self.opt_in?
      mailchimp = Hominid::API.new(ENV["MAILCHIMP_API_KEY"])
      list_id = mailchimp.find_list_id_by_name "visitors"
      info = { }
      result = mailchimp.list_subscribe(list_id, self.email, info, 'html', false, true, false, true)
      Rails.logger.info("MAILCHIMP SUBSCRIBE: result #{result.inspect} for #{self.email}")
    end
  end
  
  def remove_user_from_mailchimp
    unless self.email.include?('@example.com')
      mailchimp = Hominid::API.new(ENV["MAILCHIMP_API_KEY"])
      list_id = mailchimp.find_list_id_by_name "visitors"
      result = mailchimp.list_unsubscribe(list_id, self.email, true, false, true)
      Rails.logger.info("MAILCHIMP UNSUBSCRIBE: result #{result.inspect} for #{self.email}")
    end
  end


end