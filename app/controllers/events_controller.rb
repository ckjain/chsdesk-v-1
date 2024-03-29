class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  before_filter :authenticate_user!
  load_and_authorize_resource 

  def index
    # full_calendar will hit the index method with query parameters
    # 'start' and 'end' in order to filter the results for the
    # appropriate month/week/day.  It should be possiblt to change
    # this to be starts_at and ends_at to match rails conventions.
    # I'll eventually do that to make the demo a little cleaner.

    if current_user.has_role? :super_admin
      @events = Event.order("starts_at DESC").scoped.paginate :page => params[:page], :per_page => 5
      @events = @events.after(params['start']) if (params['start'])
      @events = @events.before(params['end']) if (params['end'])
      @event = Event.find(params[:event_id]) if params[:event_id]
    else
      @events = Event.order("starts_at DESC").scoped.where("society_id = ?", current_user.society_id).paginate :page => params[:page], :per_page => 5
      @events = @events.after(params['start']) if (params['start'])
      @events = @events.before(params['end']) if (params['end'])
      @event = Event.where("society_id = ?", current_user.society_id).find(params[:event_id]) if params[:event_id]
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/1/edit
  def edit
      @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
      @event = Event.new(params[:event])
      @event.society_id = current_user.society_id
    respond_to do |format|
      if @event.save
      track_activity @event
      
        format.html { redirect_to @event, :notice => "<strong>#{@event.title}</strong> was successfully created".html_safe }
        format.json { render :json => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
      @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
      track_activity @event

        format.html { redirect_to @event, :notice => "<strong>#{@event.title}</strong> was successfully updated".html_safe }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
      @event = Event.find(params[:id])
      @event.destroy
      track_activity @event

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
