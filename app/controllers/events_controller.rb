class EventsController < ApplicationController
  before_action :find_event, only: [:show, :update, :edit, :destroy]
  
  def index
    @events = Event.all.order("created_at DESC")
  end 

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event # another HTTP request
    else
      render 'new' # does not send another HTTP request
    end
  end
  
  def new
    @event = Event.new
  end 
  
  def edit
  end
  
  def show
  end 
  
  def update
  end 
  
  def destroy
  end 
  
  private
    def find_event
      @event = Event.find(params[:id])
    end
    
    def event_params
      params.require(:event).permit(:content, :start_date, :end_date,
                                    :place)
    end 
end
