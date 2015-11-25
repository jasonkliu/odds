class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params.require(:event).permit(:number, :text))

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end
end
