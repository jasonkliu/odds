class CommentsController < ApplicationController
	def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)

    # TODO: Show the error messages if the guess isn't an integer.
    redirect_to event_path(@event)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :guess)
    end
end
