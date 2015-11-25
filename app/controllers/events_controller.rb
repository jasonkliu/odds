class EventsController < ApplicationController
  def new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params.require(:event).permit(:number, :text))

    @event.save
    redirect_to @event
  end
end
