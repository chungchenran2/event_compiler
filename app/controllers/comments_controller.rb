class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      redirect_to event_sjsu_path(@comment.event_sjsu_id),
                  notice: 'Comment was successfully created.'
    else
      redirect_to event_sjsu_path(@comment.event_sjsu_id),
                  alert: 'Error creating comment.'
    end
  end
  #def create
  #  @event_sjsu = EventSjsu.find(params[:event_sjsu_id])

  #  if @event_sjsu.comments.create(comment_params)
  #    redirect_to @event_sjsu, notice: 'Comment was successfully created.' 
  #  else
  #    redirect_to @event_sjsu, alert: 'Error creating comment.'
  #  end
  #end

  #private
    # Never trust parameters from the scary internet, only allow the white list through.
  #  def comment_params
  #    #params.require(:comment).permit(:source, :body)
  #    params.require(:comment).permit(:author, :body)
  #  end
  private

  def comment_params
    params.require(:comment).permit(:body, :event_sjsu_id)
  end
end
