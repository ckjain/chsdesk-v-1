
view and controllar remains
readme
________________________________________
rails_admin added in config (?)

user.rb---

  after_create :send_welcome_email (?)
  
  def send_welcome_email			(?)
    UserMailer.welcome_email(self).deliver
  end
-------------------------

Ability

if user.has_role? :admin  (super_admin)
      can :manage, :all
      
------------------------------
stylesheets

@import "bootstrap";
body { padding-top: 60px; }
@import "bootstrap-responsive";

-----------------------------------------