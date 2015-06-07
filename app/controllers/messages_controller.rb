class MessagesController < ApplicationController

  def index
    render json: Message.includes(:user).all
  end

  def show
    render json: Message.find(params[:id])
  end

  def create
    curr_user = current_user
    curr_user.messages.create!({text: params[:message]})
    render text: "OK"
  end



  private

  def todo_params
    # It's mandatory to specify the nested attributes that should be whitelisted.
    # If you use `permit` with just the key that points to the nested attributes hash,
    # it will return an empty hash.
    params.require(:message).permit(:text)
  end

end