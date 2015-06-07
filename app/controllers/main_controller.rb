class MainController < ApplicationController
  def index
    if !(session.has_key? :user_id)
      new_user = User.create!
      session[:user_id] = new_user.id
    end
  end
end
