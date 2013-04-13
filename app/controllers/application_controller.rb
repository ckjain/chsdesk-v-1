class ApplicationController < ActionController::Base
  protect_from_forgery
#  helper_method :all
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
    # got these tips from
  # http://lyconic.com/blog/2010/08/03/dry-up-your-ajax-code-with-the-jquery-rest-plugin

  def track_activity(trackable, action = params[:action])
    current_user.activities.create! action: action, trackable: trackable, 
      society_id: current_user.society_id, ip: request.env['REMOTE_ADDR'],
      browser: request.env['HTTP_USER_AGENT']
  end

end
