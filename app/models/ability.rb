class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :super_admin
      can :manage, :all
      elsif user.has_role? :society_admin
        can :manage, [Society, Event, Unit, Member, User, UnitType, Membership, BillSetup, Bill, BillHeader, Meeting,Staff]
        elsif user.has_role? :society_team
            can :manage, [Society, Unit, Member]
            can [:index, :search, :active, :suspended, :pending, :deleted], User, :state => 'active', :id => user.id 
            #          can :manage, [User], :show
            # manage products, assets he owns
            can :manage, BillHeader do |billheader|
              billheader.try(:owner) == user
            end
            can :manage, BillHeader do |billheader|
              billheader.assetable.try(:owner) == user
            end
          elsif user.has_role? :society_user
            can :read, [Event]
    end
        # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
