class EventsController < ApplicationController
  def new; end

  def index
    @events = Event.all
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(:date, :description)
  end
end
