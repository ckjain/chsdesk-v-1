class Member < ActiveRecord::Base
 
  attr_accessible :mobile_phone, :user_id, :society_id, :name, :counter, :email_id

  validates :name,
                    :length   => { :within => 2..30 },
                    :allow_blank => true
  validates :mobile_phone,  :length  => { :maximum => 20 }, 
            :allow_blank => true
  has_many :memberships
  has_many :units, :through => :memberships
  has_many :societies, :through => :memberships
  belongs_to :user
  default_scope :order => 'updated_at DESC'
#  has_many :users, :through => :memberships
#  @member=Member.first
#  @member.:memberships.collect { |m| m.unit } 
#  @member.units
#  belongs_to :unit
#  has_many :committee_members
#  has_many :meeting_members
   def counter
     "#{name}"
   end
  
  def member_name
    "#{name.capitalize}"
  end
  def bill_member_name
    "#{name.capitalize}"
  end
  #------------token input-------------
  has_many :meeting_members
  has_many :meetings, through: :meeting_members
#  ilke instead of like to avoid case sensitive
  def self.tokens(query)
    members = where("name like ?", "%#{query}%")
    if members.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      members
    end
  end

  def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1, society_id: 2).id}
    tokens.split(',')
  end
  
#------------token input------end-------

  def mem_id_update
    sql = ActiveRecord::Base.connection();
    sql.execute "SET autocommit=0";
    sql.begin_db_transaction 
    id, value =
    sql.update "UPDATE `chsdesk`.`members` SET mem_id=id ";
    sql.commit_db_transaction 
    value;
    updated_at > 20.minutes.ago

  end
    
  scope :member_search, lambda { |search| 
  search = "%#{search}%"
  where('name LIKE ? OR  mobile_phone LIKE ?', search, search)
 }


end
