class UsersController < ApplicationController
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction
  respond_to :html, :json
  load_and_authorize_resource 

  def toggle_role
    @user = User.find(params[:id])
    role = Role.find_by_name(params[:role])
    if @user.roles.include?(role)
      @user.roles.delete(role)
      flash[:notice] = "Revoked #{role.name} permissions"
    else
      @user.roles << role
      @user.save
      flash[:notice] = "Granted #{role.name} permissions"
    end
    if request.env["HTTP_REFERER"].present?
      redirect_to :back, only_path: true 
    else
      redirect_to user_path(@user), only_path: true 
    end
  end
  
  def pending
    if current_user.has_role? :super_admin
      @users = User.paginate :conditions => {:state => 'pending'}, :page => params[:page], :per_page => 20
    else
      @users = User.where("society_id = ?", current_user.society_id).paginate :conditions => {:state => 'pending'}, :page => params[:page], :per_page => 20
    end
    render :action => 'index'
  end

  def suspended
    if current_user.has_role? :super_admin
      @users = User.paginate :conditions => {:state => 'suspended'}, :page => params[:page], :per_page => 20
    else
      @users = User.where("society_id = ?", current_user.society_id).paginate :conditions => {:state => 'suspended'}, :page => params[:page], :per_page => 20
    end
    render :action => 'index'
  end
  
  def active
    if current_user.has_role? :super_admin
      @users = User.paginate :conditions => {:state => 'active'}, :page => params[:page], :per_page => 20
    else  
      @users = User.where("society_id = ?", current_user.society_id).paginate :conditions => {:state => 'active'}, :page => params[:page], :per_page => 20
    end
    render :action => 'index'
  end
  
  def deleted
    if current_user.has_role? :super_admin
      @users = User.paginate :conditions => {:state => 'deleted'}, :page => params[:page], :per_page => 20
    else
      @users = User.where("society_id = ?", current_user.society_id).paginate :conditions => {:state => 'deleted'}, :page => params[:page], :per_page => 20
    end
    render :action => 'index'
  end
  
  def activate
    @user = User.find(params[:id])
    @user.activate!
    redirect_to users_path, only_path: true 
  end
  
  def suspend
    @user = User.find(params[:id])
    @user.suspend! 
    redirect_to users_path, only_path: true 
  end

  def unsuspend
    @user = User.find(params[:id])
    @user.unsuspend! 
    redirect_to users_path, only_path: true 
  end

  def purge
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, only_path: true 
  end
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.delete!

    redirect_to users_path, only_path: true 
  end
  
  def reset_password
    @user = User.find(params[:id])
    @user.reset_password!
    
    flash[:notice] = "A new password has been sent to the user by email."
    redirect_to user_path(@user), only_path: true 
  end
#-----------------------------baseapp2 end

  def index
#    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    direction = params[:direction] == "desc" ? "desc" : "asc"
    if current_user.has_role? :super_admin 
      @users = User.search(params[:search]).order("name #{direction}").paginate(:per_page => 20, :page => params[:page])
    else
      @users = User.where("society_id = ?", current_user.society_id).search(params[:search]).order("name #{direction}").paginate(:per_page => 20, :page => params[:page])
    end
    @chart = create_chart
  end

  def show
    if current_user.has_role? :super_admin or current_user.has_role? :society_admin
      @user = User.find(params[:id])
    else
      @user = current_user
    end
      respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  def edit
    if current_user.has_role? :super_admin or current_user.has_role? :society_admin
    @user = User.find(params[:id])
    else
    @user = current_user
    end
  end
  
  def update
    if current_user.has_role? :super_admin or current_user.has_role? :society_admin
    @user = User.find(params[:id])
    else
    @user = current_user
    end
      respond_to do |format|
        if @user.update_attributes(params[:user])
          format.html { redirect_to(@user, only_path: true , :notice => 'User was successfully updated.') }
          format.json { respond_with_bip(@user) }
        else
          format.html { render :action => "edit" }
          format.json { respond_with_bip(@user) }
        end
      end
    @user.update_attributes(params[:user])
#    respond_with @user
  end
  
  def invite
    authorize! :invite, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(params[:id])
    @user.send_confirmation_instructions
    redirect_to :back, only_path: true, :notice => "Sent invitation to #{@user.email}."
  end
  
  def bulk_invite
    authorize! :bulk_invite, @user, :message => 'Not authorized as an administrator.'
    users = User.where(:confirmation_token => nil).order(:created_at).limit(params[:quantity])
    users.each do |user|
      user.send_confirmation_instructions
    end
    redirect_to :back, only_path: true, :notice => "Sent invitation to #{users.count} users."
  end
  
  private
  
  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def create_chart
    users_by_day = User.group("DATE(created_at)").count
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('date')
    data_table.new_column('number')
    users_by_day.each do |day|
#      data_table.add_row([ Date.parse(day[0]), day[1]])
      
    end
    @chart = GoogleVisualr::Interactive::AnnotatedTimeLine.new(data_table)
  end

end