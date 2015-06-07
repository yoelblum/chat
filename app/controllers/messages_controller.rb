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


end